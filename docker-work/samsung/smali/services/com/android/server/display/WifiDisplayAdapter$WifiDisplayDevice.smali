.class public final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiDisplayDevice"
.end annotation


# static fields
.field public static final PENDING_RESIZE:I = 0x2

.field public static final PENDING_SURFACE_CHANGE:I = 0x1

.field public static final REFRESH_RATE:F = 60.0f


# instance fields
.field public final mAddress:Landroid/view/DisplayAddress;

.field public mFlags:I

.field public mHeight:I

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mMode:Landroid/view/Display$Mode;

.field public mName:Ljava/lang/String;

.field public mPendingChanges:I

.field public final mRefreshRate:F

.field public mRotation:I

.field public mSurface:Landroid/view/Surface;

.field public mWidth:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;I)V
    .registers 13

    .line 977
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 978
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 968
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    .line 980
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 981
    iput p4, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 982
    iput p5, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 983
    iput p6, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 984
    iput p7, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 985
    invoke-static {p8}, Landroid/view/DisplayAddress;->fromMacAddress(Ljava/lang/String;)Landroid/view/DisplayAddress$Network;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Landroid/view/DisplayAddress;

    .line 986
    iput-object p9, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 987
    invoke-static {p4, p5, p6}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 989
    iput p10, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    .line 990
    iget p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    return-void
.end method


# virtual methods
.method public addFlagLocked(I)V
    .registers 3

    .line 1018
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    const/4 p1, 0x0

    .line 1019
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method

.method public destroyLocked()V
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 1000
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 1001
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 1003
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6

    .line 1062
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_68

    .line 1063
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1064
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1066
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 1067
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 1068
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 1069
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 1070
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Display$Mode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    const-wide/32 v1, 0x3b9aca00

    .line 1071
    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    float-to-int v3, v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 1072
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 1073
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    const/4 v1, 0x3

    .line 1074
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 1075
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Landroid/view/DisplayAddress;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v1, 0x2

    .line 1076
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 1077
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 1081
    :cond_68
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public hasStableUniqueId()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_20

    .line 1049
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 1052
    :cond_15
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    .line 1053
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    :cond_20
    const/4 p1, 0x0

    .line 1057
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    return-void
.end method

.method public removeFlagLocked(I)V
    .registers 3

    .line 1023
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    const/4 p1, 0x0

    .line 1024
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method

.method public setNameLocked(Ljava/lang/String;)V
    .registers 2

    .line 1007
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1008
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method

.method public setRotationLocked(I)V
    .registers 2

    .line 1013
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotation:I

    const/4 p1, 0x0

    .line 1014
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method

.method public updateSurfaceLocked(Landroid/view/Surface;II)V
    .registers 7

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSurfaceLocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayDevice(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    if-ne v0, p2, :cond_2f

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    if-eq v0, p3, :cond_5c

    .line 1030
    :cond_2f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayDevice(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_40

    .line 1032
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1034
    :cond_40
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 1035
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 1036
    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 1037
    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    const/high16 p1, 0x42700000    # 60.0f

    .line 1038
    invoke-static {p2, p3, p1}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    const/4 p1, 0x0

    .line 1039
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1040
    iget p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    or-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mPendingChanges:I

    :cond_5c
    return-void
.end method
