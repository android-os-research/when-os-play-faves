.class public Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;
.super Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback$Stub;
.source "SysinputHALCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SysinputHALCallback"

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;


# instance fields
.field private final commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

.field private final rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;)V
    .registers 3
    .param p1, "rawdata"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .param p2, "command"    # Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 18
    invoke-direct {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback$Stub;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->commandService:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 21
    return-void
.end method

.method public static getInstance(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;)Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;
    .registers 4
    .param p0, "rawdata"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    .line 24
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    if-nez v0, :cond_17

    .line 25
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    if-nez v1, :cond_12

    .line 27
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 31
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;

    return-object v0
.end method


# virtual methods
.method public onReportInformation(ILjava/lang/String;)V
    .registers 5
    .param p1, "devid"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReportInformation: devid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SysinputHALCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onReportRawData(IILjava/util/ArrayList;)V
    .registers 5
    .param p1, "devid"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHALCallback;->rawdataService:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->onReportRawData(ILjava/util/ArrayList;)I

    .line 42
    return-void
.end method
