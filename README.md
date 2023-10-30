# mushroomapp

MushroomApp is a flutter application with firebase connectivity.It was developed as a College major project.It classifies mushroom images into edbile or inedible through a CNN model consisting of 3 convolutional layers followed by a fully connected layer.The model was trained and validated using 29,100 images where the ratio of training and validation data was 8:2. The network was trained on 50 epochs.The model has 91% training accuracy and 63% validation accuracy.

It consists of 4 screens namely capture image screen, select images screen,previous result screen and about screen.In capture image screen we can capture images using our device camera and predict the edibility of mushroom.
While in select image screen images can be selected from gallery and edibility can be checked.The CNN model is hosted in remote server.Images are sent to the 
model through Fast Api and edibility class is returned as response to be displayed in the
app.

Successfully classified images are stored in firestore which can be viewed in previous 
result screen.
About screen provides information about the developers
