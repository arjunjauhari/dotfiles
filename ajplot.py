import numpy as np
import matplotlib.pyplot as plt

def plotwidenormal():
    x  = np.array(xrange(50))+1
    y1 = np.array([25.66, 35.28, 42.98, 42.43, 46.31, 48.97, 47.03, 49.14, 50.73, 51.61, 52.04, 50.01, 50.98, 53.41, 51.22, 52.18, 51.41, 51.65, 51.3 , 51.63, 51.04, 50.54, 49.41, 49.38, 50.53, 49.62, 49.85, 49.26, 50.26, 49.55, 47.97, 47.44, 49.07, 48.47, 48.17, 49.05, 48.11, 47.06, 49.18, 48.54, 47.66, 47.79, 48.85, 49.13, 48.72, 48.83, 49.46, 48.87, 48.67, 49.5])
    
    x2  = np.array(xrange(51))+50
    y2 = np.array([49.50, 49.83, 49.99, 50.03, 50.2 , 50.25, 50.26, 50.27, 50.27, 50.29, 50.39, 50.36, 50.42, 50.47, 50.51, 50.59, 50.64, 50.67, 50.74, 50.75, 50.79, 50.78, 50.75, 50.78, 50.8 , 50.81, 50.84, 50.83, 50.86, 50.84, 50.89, 50.88, 50.91, 50.91, 50.91, 50.95, 50.93, 50.92, 50.99, 50.99, 51.02, 50.99, 50.99, 50.97, 51.01, 51.04, 51.03, 51.06, 51.04, 51.04, 51.05])
    plt.plot(x,y1,'r',label='Teacher Net')
    plt.plot(x2,y2,'b',label='Student Net')
    plt.legend()
    plt.xlabel("Epochs")
    plt.ylabel("Test Accuracy")
    plt.title("Function-Preserving Initializations: Net2WiderNet\nLenet Model on CIFAR-10 dataset")
    plt.show()


def plotwidelowlr():
    y1 = np.array([13.64, 15.7 , 17.18, 18.23, 20.04, 22.99, 24.49, 26.74, 27.51, 28.82, 28.74, 30.24, 31.48, 32.92, 34.43, 34.97, 36.57, 37.31, 37.96, 39.23, 39.64, 40.72, 40.38, 41.36, 41.57, 41.72, 43.05, 43.51, 42.54, 44.3 , 44.4 , 44.18, 45.22, 45.06, 45.85, 46.47, 46.32, 46.63, 47.01, 46.64, 46.67, 47.56, 48.24, 48.02, 48.58, 48.41, 48.45, 48.67, 48.98, 48.83])
    x  = np.array(xrange(50))+1
    
    x2  = np.array(xrange(51))+50
    y2 = np.array([49.93, 49.89, 49.84, 48.77, 50.07, 48.29, 50.27, 50.16, 49.9 , 50.29, 50.07, 49.55, 49.33, 49.94, 50.37, 50.82, 50.71, 50.79, 50.74, 50.58, 50.48, 50.61, 50.97, 50.85, 51.75, 50.77, 51.55, 49.79, 49.51, 50.77, 51.02, 51.87, 50.51, 51.01, 51.23, 50.58, 51.56, 50.59, 50.7 , 50.75, 50.62, 50.36, 49.52, 49.9 , 50.01, 50.7 , 49.88, 50.15, 49.83, 50.31, 50.12])

    x3  = np.array(xrange(50))+51
    y3 = np.array([10, 20.62, 20.61, 24.98, 20.59, 26.31, 25.95, 29.68, 27.17, 27.34, 32.86, 31.02, 27.32, 34.91, 33.87, 33.87, 33.36, 35.82, 36.57, 35.32, 38.01, 39.2 , 35.68, 38.08, 39.41, 39.21, 39.99, 40.67, 39.85, 41.8 , 37.89, 42.17, 41.81, 40.32, 42.69, 41.11, 44.02, 40.67, 44.29, 43.65, 40.24, 44.12, 43.87, 44.77, 44.08, 45.62, 45.56, 44.49, 46.25, 46.14, 46.64])
    plt.plot(x,y1,'r',label='Teacher Net, LR=0.0001')
    plt.plot(x2,y2,'b',label='Student Net:Net2WiderNet, LR=0.0001')
    plt.plot(x2,y3,'g',label='Student Net:RandomPad, LR=0.0001')
    legend = plt.legend(loc='lower right')
    plt.xlabel("Epochs", size=10, style='italic')
    plt.ylabel("Test Accuracy [%]", size=10, style='italic')
    plt.title("Function-Preserving Initializations: Net2WiderNet\nLenet Model on CIFAR-10 dataset")
    plt.grid('on')

    # Set the fontsize
    for label in legend.get_texts():
        label.set_fontsize('large')
    
    for label in legend.get_lines():
        label.set_linewidth(2.5)  # the legend line width
    plt.show()

def plotdeepnormal():
    y1 = np.array([28.14, 37.46, 42.05, 43.79, 42.05, 45.94, 48.96, 49.08, 50.65, 51.23, 50.93, 52.14, 49.97, 51.89, 49.27, 51.21, 51.62, 51.31, 51, 49.1 , 50.96, 49.89, 50.55, 50.06, 50.11, 50.34, 49.36, 49.19, 49.11, 50.01, 48.18, 48.84, 49.01, 49.37, 48.72, 49.11, 49.48, 49.04, 48.12, 48.96, 49.07, 48.96, 48.25, 49.75, 49.21, 47.89, 48.31, 48.9 , 48.84, 48.9])
    x  = np.array(xrange(50))+1
    
    x2  = np.array(xrange(51))+50
    y2 = np.array([48.9, 49.89, 50.22, 50.48, 50.46, 50.55, 50.62, 50.65, 50.71, 50.72, 50.79, 50.76, 50.85, 50.89, 50.9 , 50.95, 50.95, 50.99, 51.03, 51.06, 51.1 , 51.13, 51.17, 51.14, 51.23, 51.27, 51.27, 51.3 , 51.3 , 51.29, 51.29, 51.31, 51.28, 51.29, 51.28, 51.27, 51.28, 51.26, 51.27, 51.26, 51.23, 51.25, 51.28, 51.27, 51.3 , 51.29, 51.34, 51.35, 51.35, 51.38, 51.37])
    plt.plot(x,y1,'r',label='Teacher Net')
    plt.plot(x2,y2,'b',label='Student Net')
    plt.legend()
    plt.xlabel("Epochs")
    plt.ylabel("Test Accuracy")
    plt.title("Function-Preserving Initializations: Net2WiderNet\nLenet Model on CIFAR-10 dataset")
    plt.show()

def plotdeeplowlr():
    y1 = np.array([11.01, 15.89, 16.28, 18.49, 21.01, 22.47, 25.18, 27.38, 28.05, 28.94, 30.65, 31.98, 32.81, 33.8 , 34.37, 35.61, 36.23, 37.86, 39.08, 39.69, 40.31, 41.11, 41.2 , 42.25, 42.55, 44.29, 44.15, 43.38, 44.57, 44.71, 45.49, 45.23, 45.48, 45.94, 45.76, 46.65, 46.88, 46.2 , 47.32, 47.5 , 47.97, 48.85, 48.29, 48.84, 48.35, 49.45, 49.52, 48.63, 49.88, 49.87])
    x  = np.array(xrange(50))+1
    
    x2  = np.array(xrange(51))+50
    y2 = np.array([49.87, 49.52, 49.15, 50.76, 50.32, 51.2 , 50.6 , 50.65, 49.81, 51.75, 51.13, 51.57, 51.6 , 51.71, 51.46, 51.41, 51.83, 52.04, 51.38, 50.28, 51.32, 51.52, 51.7 , 51.41, 51.3 , 51.73, 51.32, 52.64, 51.88, 51.48, 51.86, 51.98, 49.89, 50.17, 51.18, 51.9 , 51.77, 51.54, 50.81, 51.14, 50.95, 50.75, 51.6 , 50.96, 51.67, 50.59, 49.93, 50.95, 50.94, 50.96, 50.49])
    x3  = np.array(xrange(50))+51
    y3 = np.array([10, 39.23, 41.29, 45.77, 47.94, 46.47, 46.51, 49.37, 48.08, 49.46, 49.62, 49.79, 49.55, 50.85, 49.22, 50.65, 50.8 , 50.23, 51.31, 51.18, 51.05, 49.54, 50.93, 51.49, 50.5 , 50.87, 50.63, 49.61, 50.04, 49.68, 50.62, 49.85, 50.51, 50.83, 50.77, 50.65, 49.91, 50.08, 49.77, 50.56, 50.57, 50.63, 50.67, 50.18, 49.83, 49.32, 48.01, 49.35, 48.94, 49.38, 49.41])
    y4 = np.array([10.01, 10.02, 10.06, 10.25, 11.07, 12.39, 14.19, 16.28, 17.79, 18.71, 18.64, 18.21, 17.43, 17.34, 17.92, 19.95, 24.92, 28.17, 28.62, 29.48, 30.21, 31.88, 32.78, 32.72, 33.59, 34.7 , 35.66, 36.84, 36.98, 37.21, 38.62, 38.33, 40.39, 39.29, 40.63, 40.42, 41.43, 42.17, 40.98, 41.99, 43.32, 43.26, 44.22, 44.24, 44.13, 45.13, 45.62, 45.6 , 46.17, 46.62])
    plt.plot(x,y1,'r',label='Teacher Net, LR=0.0001')
    plt.plot(x2,y2,'b',label='Student Net:Net2DeeperNet, LR=0.0001')
    plt.plot(x2,y3,'g',label='Student Net:RandomInitNewLayer, LR=0.0001')
    plt.plot(x3,y4,'k',label='Student Net:RandomInit, LR=0.0001')
    legend = plt.legend(loc='lower left')
    #legend = plt.legend(loc='upper left')
    plt.xlabel("Epochs", size=10, style='italic')
    plt.ylabel("Test Accuracy [%]", size=10, style='italic')
    plt.title("Function-Preserving Initializations: Net2DeeperNet\nLenet Model on CIFAR-10 dataset")
    plt.grid('on')

    # Set the fontsize
    for label in legend.get_texts():
        label.set_fontsize('large')
    
    for label in legend.get_lines():
        label.set_linewidth(2.5)  # the legend line width
    plt.show()

plotdeeplowlr()
plotwidelowlr()