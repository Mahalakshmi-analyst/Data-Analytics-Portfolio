# ==============================
# 📦 BASIC LIBRARIES
# ==============================
import pandas as pd
import numpy as np

# ==============================
# 📊 VISUALIZATION
# ==============================
import matplotlib.pyplot as plt
import seaborn as sns

# ==============================
# ⚙️ PREPROCESSING
# ==============================
from sklearn.preprocessing import StandardScaler, LabelEncoder, OneHotEncoder
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import label_binarize
# ==============================
# 🔀 DATA SPLITTING
# ==============================
from sklearn.model_selection import train_test_split

# ==============================
# 📈 REGRESSION MODELS
# ==============================
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor

# ==============================
# 🎯 CLASSIFICATION MODELS
# ==============================
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier

# ==============================
# 👥 CLUSTERING
# ==============================
from sklearn.cluster import KMeans

# ==============================
# 📏 EVALUATION METRICS
# ==============================
from sklearn.metrics import (
    mean_squared_error,
    mean_absolute_error,
    r2_score,
    accuracy_score,
    confusion_matrix,
    classification_report,
    silhouette_score
)
from sklearn.linear_model import LogisticRegression
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split

from sklearn.metrics import confusion_matrix, accuracy_score, precision_score, recall_score, f1_score, roc_curve, auc,roc_auc_score
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import roc_auc_score


# ==============================
# ⚡ OPTIONAL (ADVANCED)
# ==============================
from sklearn.decomposition import PCA
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, confusion_matrix, roc_curve, auc

from statsmodels.stats.outliers_influence import variance_inflation_factor
from sklearn.metrics import calinski_harabasz_score
from sklearn.metrics import davies_bouldin_score
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score

import warnings
warnings.filterwarnings("ignore")
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.preprocessing import MinMaxScaler
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score
from sklearn.decomposition import PCA
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score, silhouette_samples
from sklearn.preprocessing import MinMaxScaler, LabelEncoder
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import random