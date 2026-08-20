.class public Lcom/android/server/wm/PendingRemoteAnimationRegistry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    }
.end annotation


# static fields
.field public static final TIMEOUT_MS:J = 0xbb8L


# instance fields
.field public final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEntries(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 40
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 41
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 6

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    if-nez v0, :cond_b

    return-object p2

    :cond_b
    if-nez p2, :cond_14

    .line 63
    iget-object p2, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-static {p2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_19

    .line 65
    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    .line 67
    :goto_19
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    if-eqz v0, :cond_20

    .line 69
    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 71
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
