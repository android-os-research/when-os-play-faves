.class public Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
.super Ljava/lang/Object;
.source "SemInputMotionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;,
        Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;,
        Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    }
.end annotation


# static fields
.field private static final SUPPORT_TFLITE:Z

.field private static final TAG:Ljava/lang/String; = "SemInputMotionController"

.field private static final eventDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

.field private static volatile isScreenOn:Z

.field private static final motionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;",
            ">;"
        }
    .end annotation
.end field

.field private static rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;


# instance fields
.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final context:Landroid/content/Context;

.field private settingHandler:Landroid/os/Handler;

.field private settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;


# direct methods
.method static bridge synthetic -$$Nest$sfgeteventDumpsys()Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;
    .registers 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->eventDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetisScreenOn()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isScreenOn:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmotionList()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdisableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->disableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smenableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->enableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 22
    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 24
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;-><init>(I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->eventDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isScreenOn:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    .line 31
    const-string v0, "default"

    const-string v1, "tflite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->SUPPORT_TFLITE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingHandler:Landroid/os/Handler;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->bootingDump:Ljava/lang/StringBuilder;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->context:Landroid/content/Context;

    .line 103
    return-void
.end method

.method private static disableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z
    .registers 2
    .param p0, "type"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    .line 142
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->disableService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    move-result v0

    return v0

    .line 145
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static enableRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z
    .registers 2
    .param p0, "type"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    .line 121
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enableService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    move-result v0

    return v0

    .line 124
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-nez v0, :cond_17

    .line 107
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    monitor-enter v0

    .line 108
    :try_start_7
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-nez v1, :cond_12

    .line 109
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 111
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 113
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    return-object v0
.end method

.method public static getMotionClients(I)Ljava/util/ArrayList;
    .registers 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 129
    .local v0, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    if-nez v0, :cond_10

    .line 130
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetclients(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_1a
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetclients(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    nop

    .end local v4    # "str":Ljava/lang/String;
    goto :goto_22

    .line 137
    :cond_33
    monitor-exit v2

    .line 138
    return-object v1

    .line 137
    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw v3
.end method

.method private registerSettingObserver()V
    .registers 6

    .line 181
    const-string v0, "SemInputMotionController"

    const-string v1, "registerSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingHandler:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    .line 186
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 187
    .local v2, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    if-eqz v2, :cond_3d

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 188
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->bootingDump:Ljava/lang/StringBuilder;

    const-string v3, "- Setting PalmMute registered\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_3d
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 193
    .end local v2    # "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    .local v0, "inputMotion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    if-eqz v0, :cond_5f

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 194
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->addObserver(Landroid/os/Handler;I)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->bootingDump:Ljava/lang/StringBuilder;

    const-string v2, "- Setting AIVF registered\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_5f
    return-void
.end method

.method public static setRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .registers 1
    .param p0, "service"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 117
    sput-object p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 118
    return-void
.end method

.method private typeToMotionEnableType(I)Ljava/lang/String;
    .registers 3
    .param p1, "motionType"    # I

    .line 469
    sparse-switch p1, :sswitch_data_c

    .line 476
    const-string v0, "NG"

    return-object v0

    .line 473
    :sswitch_6
    const-string v0, "AIVF"

    return-object v0

    .line 471
    :sswitch_9
    const-string v0, "PALM"

    return-object v0

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method private typeToSupportBit(I)I
    .registers 3
    .param p1, "motionType"    # I

    .line 481
    sparse-switch p1, :sswitch_data_c

    .line 488
    const/4 v0, 0x0

    return v0

    .line 485
    :sswitch_5
    const/high16 v0, 0x200000

    return v0

    .line 483
    :sswitch_8
    const/high16 v0, 0x100000

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_8
        0x5 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public deliveryRawdata([Ljava/lang/Object;)V
    .registers 6
    .param p1, "rawdata"    # [Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 462
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2a

    .line 463
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->deliveryRawdata([Ljava/lang/Object;)V

    .line 465
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_2a
    goto :goto_a

    .line 466
    :cond_2b
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 200
    const-string v0, "SemInputMotionController"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 203
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 204
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->destroy()V

    .line 206
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_2a
    goto :goto_11

    .line 207
    :cond_2b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 537
    const-string v0, "dumping SemInputMotionController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 541
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 542
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dump(Ljava/io/PrintWriter;)V

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->printClients(Ljava/io/PrintWriter;)V

    .line 547
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_6f
    goto :goto_18

    .line 548
    :cond_70
    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- MotionController event data: max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->eventDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->getMaxQueueSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 553
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    .end local v1    # "data":Ljava/lang/String;
    goto :goto_24

    .line 555
    :cond_47
    const-string v0, "  end SemInputMotionController event"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 558
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    if-eqz v2, :cond_7a

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 559
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->dumpEvents(Ljava/io/PrintWriter;)V

    .line 562
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_7a
    goto :goto_56

    .line 563
    :cond_7b
    return-void
.end method

.method public getMotionControl(Ljava/lang/String;)I
    .registers 5
    .param p1, "subtype"    # Ljava/lang/String;

    .line 521
    if-nez p1, :cond_b

    .line 522
    const-string v0, "SemInputMotionController"

    const-string v1, "getMotionControl: subtype is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v0, -0x4

    return v0

    .line 526
    :cond_b
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 527
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgettype(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->typeToMotionEnableType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 528
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 529
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->getMotionControl(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 532
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_3e
    goto :goto_15

    .line 533
    :cond_3f
    const/4 v0, -0x3

    return v0
.end method

.method public isEnableMotion(Ljava/lang/String;)I
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 510
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 511
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgettype(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->typeToMotionEnableType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 512
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_32

    .line 513
    return v3

    .line 516
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_32
    goto :goto_a

    .line 517
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 5

    .line 219
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isScreenOn:Z

    .line 220
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 221
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2d

    .line 222
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->pause()V

    .line 224
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_2d
    goto :goto_d

    .line 225
    :cond_2e
    return-void
.end method

.method public prepare()V
    .registers 8

    .line 149
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->settingObserver:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    const-string v1, "SemInputMotionController"

    if-eqz v0, :cond_c

    .line 150
    const-string v0, "prepare: already called"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_c
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->SUPPORT_TFLITE:Z

    if-nez v0, :cond_16

    .line 155
    const-string v0, "prepare: tflite not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_16
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;-><init>(I)V

    .line 160
    .local v0, "palmMute":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionPalmMute;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionPalmMute;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Lcom/samsung/android/hardware/secinputdev/SemInputMotion;)V

    .line 161
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->prepare()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V

    .line 162
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 163
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->destroy()V

    .line 165
    :cond_3e
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;-><init>(I)V

    .line 169
    .local v1, "volumeForce":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    new-instance v4, Lcom/samsung/android/hardware/secinputdev/SemInputMotionVolumeForce;

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->context:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionVolumeForce;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    invoke-static {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Lcom/samsung/android/hardware/secinputdev/SemInputMotion;)V

    .line 170
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->prepare()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V

    .line 171
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 172
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->destroy()V

    .line 174
    :cond_78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->registerSettingObserver()V

    .line 178
    return-void
.end method

.method public registerListener(ILjava/lang/String;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 228
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getMotionfromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    move-result-object v0

    .line 229
    .local v0, "motion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    const-string v1, "SemInputMotionController"

    if-nez v0, :cond_2a

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener: not defined motion_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    return v1

    .line 234
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->enableByListener(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public restart()V
    .registers 5

    .line 210
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 211
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->getClientsSize()I

    move-result v3

    if-lt v3, v2, :cond_2a

    .line 212
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->restart()V

    .line 214
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_2a
    goto :goto_a

    .line 215
    :cond_2b
    sput-boolean v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->isScreenOn:Z

    .line 216
    return-void
.end method

.method public setMotionControl(Ljava/lang/String;II)I
    .registers 7
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "feature"    # I

    .line 493
    if-nez p1, :cond_1c

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMotionControl: subtype is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputMotionController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, -0x4

    return v0

    .line 498
    :cond_1c
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->motionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 499
    .local v1, "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetisAvailable(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 500
    const-string v2, "ALL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgettype(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)I

    move-result v2

    .line 501
    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->typeToMotionEnableType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgettype(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->typeToSupportBit(I)I

    move-result v2

    and-int/2addr v2, p3

    if-lez v2, :cond_60

    .line 502
    :cond_59
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetobject(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Lcom/samsung/android/hardware/secinputdev/SemInputMotion;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotion;->setMotionControl(Ljava/lang/String;I)V

    .line 505
    .end local v1    # "element":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_60
    goto :goto_26

    .line 506
    :cond_61
    const/4 v0, -0x3

    return v0
.end method

.method public unregisterListener(ILjava/lang/String;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 239
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->getMotionfromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    move-result-object v0

    .line 240
    .local v0, "motion":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;
    const-string v1, "SemInputMotionController"

    if-nez v0, :cond_46

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener: not defined motion_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->eventDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--: not defined motion, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    return v1

    .line 246
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->disableByListener(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
