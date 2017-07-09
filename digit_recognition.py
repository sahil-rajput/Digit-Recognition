#Libraries
import matplotlib.pyplot as plt
import sklearn
from sklearn.datasets import make_classification
from sklearn.datasets import make_blobs
from sklearn.datasets import make_gaussian_quantiles
from sklearn.cross_validation import train_test_split
from sklearn import svm
from sklearn.neighbors import KNeighborsClassifier
import scipy.io as sc
from sklearn.decomposition import PCA
from sklearn.metrics import accuracy_score
#Loading data from file
data = sc.loadmat('data.mat')
x_data = data['X']
y_data = data['y']
#Trainning data
x_train,x_test,y_train,y_test=train_test_split(x_data,y_data,test_size=0.2)

#Converting higher dimension to two-dimension
pca = PCA(n_components=2)
pca.fit(x_train)
new_data=pca.transform(x_train)
m,n=[],[]
for i in new_data:
    m.append(i[0])
    n.append(i[1])

#Plotting graph
plt.scatter(m,n,c=y_train)
plt.show()

#Using Support Vector Machine to calculate accuracy
model=svm.SVC()
model.fit(x_train,y_train)
pred=model.predict(x_test)

#Calculating accuracy
print("Accuracy=")
print accuracy_score(y_test,pred,normalize = True)*100
