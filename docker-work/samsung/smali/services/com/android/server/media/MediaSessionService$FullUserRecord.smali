.class public final Lcom/android/server/media/MediaSessionService$FullUserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FullUserRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    }
.end annotation


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFullUserId:I

.field public mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field public final mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field public mOnMediaKeyListenerUid:I

.field public mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field public mOnVolumeKeyLongPressListenerUid:I

.field public final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field public final mUidToSessionCount:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullUserId(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnMediaKeyEventSessionChangedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidToSessionCount(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmOnMediaKeyListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnMediaKeyListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnVolumeKeyLongPressListenerUid(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMediaButtonSessionLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpushAddressedPlayerChangedLocked(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .registers 5

    .line 978
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 966
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 968
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 979
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 980
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    .line 981
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mContentResolver:Landroid/content/ContentResolver;

    .line 982
    new-instance v0, Lcom/android/server/media/MediaSessionStack;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmAudioPlayerStateMonitor(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const-string/jumbo v0, "media_button_receiver"

    .line 984
    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 986
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p1

    .line 987
    invoke-static {p1, p2}, Lcom/android/server/media/MediaButtonReceiverHolder;->unflattenFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-void
.end method


# virtual methods
.method public addOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V
    .registers 5

    .line 1000
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1001
    new-instance v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V

    .line 1003
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1005
    :try_start_f
    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_20

    :catch_13
    move-exception p1

    const-string p2, "MediaSessionService"

    const-string v1, "Failed to add listener"

    .line 1007
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-void
.end method

.method public addOnMediaKeyEventSessionChangedListenerLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V
    .registers 5

    .line 1022
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1023
    new-instance v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V

    .line 1025
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1027
    :try_start_f
    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1030
    iget-object p1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_25

    :catch_18
    move-exception p1

    const-string p2, "MediaSessionService"

    const-string v1, "Failed to add listener"

    .line 1033
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    return-void
.end method

.method public destroySessionsForUserLocked(I)V
    .registers 4

    .line 992
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p1

    .line 993
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 994
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdestroySessionLocked(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Record for full_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_6b

    .line 1051
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v2, v3, :cond_68

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1052
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    if-ne v2, v3, :cond_68

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", profile_user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmFullUserIds(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1056
    :cond_6b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Volume key long-press listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Volume key long-press listener package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 1060
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media key listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media key listener package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 1063
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OnMediaKeyEventDispatchedListener: added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 1065
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "  from "

    if-eqz v2, :cond_147

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 1068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-static {v3, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11b

    .line 1070
    :cond_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OnMediaKeyEventSessionChangedListener: added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 1071
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_171
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->uid:I

    invoke-static {v4, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_171

    .line 1076
    :cond_19b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Last MediaButtonReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "High priority mediakey receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHighPriorityMediaKeyReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Volume key long-press receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmVolumeKeyLongPressReceiver(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 2

    .line 1162
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1163
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmGlobalPrioritySession(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    goto :goto_15

    :cond_f
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecordImpl;Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 6

    const-string v0, "MediaSessionService"

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media button session is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_2b

    .line 1096
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_3e

    :cond_2b
    :goto_2b
    if-eqz p2, :cond_39

    .line 1099
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 1100
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 1102
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 1103
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_29

    throw p0
.end method

.method public final pushAddressedPlayerChangedLocked()V
    .registers 3

    .line 1156
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 1157
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public final pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .registers 4

    .line 1129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1131
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_46

    .line 1132
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 1134
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0, v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$msetMultiSoundFlag(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    .line 1136
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1137
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 1136
    invoke-interface {p1, p0, v0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    goto :goto_46

    .line 1141
    :cond_1d
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1142
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1145
    invoke-interface {p1, p0, v1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    goto :goto_46

    :cond_38
    const-string p0, ""

    .line 1147
    invoke-interface {p1, p0, v1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception p0

    const-string p1, "MediaSessionService"

    const-string v0, "Failed to pushAddressedPlayerChangedLocked"

    .line 1150
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_46
    return-void
.end method

.method public rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3

    .line 1108
    instance-of v0, p1, Lcom/android/server/media/MediaSession2Record;

    if-eqz v0, :cond_5

    return-void

    .line 1112
    :cond_5
    check-cast p1, Lcom/android/server/media/MediaSessionRecord;

    .line 1115
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 1118
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    if-nez p1, :cond_19

    const-string p1, ""

    goto :goto_1d

    .line 1120
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/media/MediaButtonReceiverHolder;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 1121
    :goto_1d
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "media_button_receiver"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public removeOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 3

    .line 1014
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1015
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 1016
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    const/4 v0, 0x0

    .line 1017
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .registers 3

    .line 1040
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1041
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 1042
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    const/4 v0, 0x0

    .line 1043
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
