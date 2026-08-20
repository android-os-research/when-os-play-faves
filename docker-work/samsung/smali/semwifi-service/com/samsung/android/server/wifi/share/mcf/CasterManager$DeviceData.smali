.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;
.super Ljava/lang/Object;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceData"
.end annotation


# instance fields
.field private mcfData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

.field private passwordCasterStartAt:J

.field private targetMcfDevice:Lcom/samsung/android/mcf/McfDevice;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;-><init>()V

    return-void
.end method


# virtual methods
.method getMcfData()Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 1

    .line 772
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->mcfData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    return-object p0
.end method

.method getPasswordCasterStartAt()J
    .registers 3

    .line 775
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->passwordCasterStartAt:J

    return-wide v0
.end method

.method getTargetMcfDevice()Lcom/samsung/android/mcf/McfDevice;
    .registers 1

    .line 769
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->targetMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    return-object p0
.end method

.method setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;J)V
    .registers 5

    .line 764
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->targetMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    .line 765
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->mcfData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 766
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->passwordCasterStartAt:J

    return-void
.end method
