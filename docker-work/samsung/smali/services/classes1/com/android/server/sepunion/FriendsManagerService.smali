.class public Lcom/android/server/sepunion/FriendsManagerService;
.super Lcom/samsung/android/sepunion/IFriendsManagerService$Stub;
.source "FriendsManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final NFC_AUTH:Ljava/lang/String; = "com.sec.feature.nfc_authentication"

.field public static final TAG:Ljava/lang/String;

.field public static final USB_AUTH:Ljava/lang/String; = "com.sec.feature.usb_authentication"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/server/sepunion/FriendsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IFriendsManagerService$Stub;-><init>()V

    .line 49
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "FriendsManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/sepunion/FriendsManagerService;->initialize()V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 7

    .line 79
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "accessoryStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_2c

    const v0, 0x110001

    .line 82
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string v2, "attached"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {p1, v1, p2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    const-string p2, "extraData"

    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p1

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_32

    :cond_2c
    const-string/jumbo p0, "mFrsServiceImpl is null."

    .line 85
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "\n##### FriendsManagerService #####\n##### (dumpsys sepunion example) #####\n"

    .line 175
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_d

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_15

    .line 181
    :cond_d
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 68
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getFrsServiceImpl()Lcom/android/server/sepunion/friends/FrsServiceImpl;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-object p0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.nfc_authentication"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.sec.feature.usb_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_28

    .line 59
    :cond_17
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Feature is not supported: com.sec.feature.nfc_authentication"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    goto :goto_31

    .line 57
    :cond_28
    :goto_28
    new-instance v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/FriendsManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    :goto_31
    return-void
.end method

.method public onBootPhase(I)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_8

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onBootPhase(I)V

    goto :goto_10

    .line 103
    :cond_8
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_8

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onCleanupUser(I)V

    goto :goto_10

    .line 148
    :cond_8
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShellCommand"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v2, :cond_16

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 190
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    goto :goto_1c

    :cond_16
    const-string/jumbo p0, "mFrsServiceImpl is null."

    .line 192
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_8

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onStartUser(I)V

    goto :goto_10

    .line 112
    :cond_8
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_8

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onStopUser(I)V

    goto :goto_10

    .line 121
    :cond_8
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_8

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onSwitchUser(I)V

    goto :goto_10

    .line 130
    :cond_8
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_8

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->onUnlockUser(I)V

    goto :goto_10

    .line 139
    :cond_8
    sget-object p0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "mFrsServiceImpl is null."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 90
    sget-object v0, Lcom/android/server/sepunion/FriendsManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenTurnOff"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_14

    const v0, 0x210002

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1a

    :cond_14
    const-string/jumbo p0, "mFrsServiceImpl is null."

    .line 94
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method
