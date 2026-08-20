.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;
.super Landroid/os/Handler;
.source "PackageFeatureUserChangePersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H$Duration;
    }
.end annotation


# static fields
.field public static final MSG_RUN_THREAD:I = 0x1

.field public static final REQUEST_LOAD:I = 0x1

.field public static final REQUEST_SAVE:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 165
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 170
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    .line 174
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmLock(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 175
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 179
    monitor-exit p1

    return-void

    .line 181
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmLoadRequestFlags(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)I

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmSaveRequestFlagsWithUserId(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 185
    monitor-exit p1

    return-void

    .line 188
    :cond_2d
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 189
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fputmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Z)V

    .line 190
    monitor-exit p1

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3e

    throw p0
.end method
