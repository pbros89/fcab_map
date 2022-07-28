

const socketInit = (io) =>  {
  io.on("connection", (socket) => {
    // console.log(socket.handshake.url);
    console.log("nuevo socket connectado:", socket.id);

    let trenes = [];
    let estaciones = [];
    let terminales= [];

    // Send all messages to the client
    const emitNotes = async () => {
      const notes = await Note.find();
      socket.emit("server:loadnotes", notes);
    };
    emitNotes();

    socket.on("client:getTrenes", async (data) => {
      const newNote = new Note(data);
      const savedNote = await newNote.save();
      io.emit("server:newnote", savedNote);
    });

    socket.on("client:getEstaciones", async (noteId) => {
      await Note.findByIdAndDelete(noteId);
      emitNotes();
    });

    socket.on("client:getTerminales", async (noteId) => {
      const note = await Note.findById(noteId);
      socket.emit("server:selectednote", note);
    });

    socket.on("client:updatenote", async (updatedNote) => {
      await Note.findByIdAndUpdate(updatedNote._id, {
        title: updatedNote.title,
        description: updatedNote.description,
      });
      emitNotes();
    });

    socket.on("disconnect", () => {
      console.log(socket.id, "disconnected");
    });
  });
};

module.exports={
    socketInit
}