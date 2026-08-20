.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;
.super Ljava/lang/Object;
.source "WifiGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Measurement"
.end annotation


# instance fields
.field private isPassive:Z

.field private isRunning:Z

.field private location:Landroid/location/Location;

.field private wifiConfigKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isPassive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->location:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->wifiConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isPassive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->isRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->location:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->wifiConfigKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;-><init>()V

    return-void
.end method
