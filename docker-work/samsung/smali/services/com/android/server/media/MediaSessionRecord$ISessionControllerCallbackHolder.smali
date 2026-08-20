.class public Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISessionControllerCallbackHolder"
.end annotation


# instance fields
.field public final mCallback:Landroid/media/session/ISessionControllerCallback;

.field public final mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;ILandroid/os/IBinder$DeathRecipient;)V
    .registers 6

    .line 1780
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 1782
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 1783
    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mUid:I

    .line 1784
    iput-object p5, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method
