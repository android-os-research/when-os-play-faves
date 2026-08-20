.class public Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final noDelay:Z

.field public final notifyForDescendants:Z

.field public final observer:Landroid/database/IContentObserver;

.field public final observersLock:Ljava/lang/Object;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/content/ContentService$ObserverNode;

.field public final uid:I

.field public final userHandle:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetuserHandle(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .registers 1

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V
    .registers 9

    .line 1765
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput-object p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 1767
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 1768
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1769
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 1770
    iput p7, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 1771
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 1773
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/os/BinderDeathDispatcher;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    goto :goto_8b

    :cond_20
    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_8b

    .line 1779
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;

    move-result-object p1

    monitor-enter p1

    .line 1780
    :try_start_29
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    .line 1782
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1784
    :cond_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_88

    if-nez p2, :cond_8b

    const/4 p1, 0x0

    .line 1788
    :try_start_46
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    .line 1789
    invoke-interface {p2, p5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 1788
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_54} :catch_55

    move-object p1, p2

    :catch_55
    const-string p2, "ContentService"

    .line 1792
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Observer registered too many times. Leak? cpid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " cuid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " cpkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :catchall_88
    move-exception p0

    .line 1784
    :try_start_89
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0

    :cond_8b
    :goto_8b
    const/4 p1, 0x0

    const-string/jumbo p2, "media"

    .line 1801
    invoke-virtual {p8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 1802
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    .line 1803
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 1804
    iget p3, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b2

    const-string p3, "android.media:"

    .line 1805
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b2

    const/4 p1, 0x1

    .line 1809
    :cond_b2
    iput-boolean p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->noDelay:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1815
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1816
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->this$0:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v1, p0}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 1817
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 7

    .line 1822
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p6, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1823
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": pid="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1824
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " uid="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " user="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1826
    iget p1, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " target="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    if-eqz p0, :cond_3d

    invoke-interface {p0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    .line 1827
    :goto_3e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
