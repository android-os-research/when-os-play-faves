.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;
.super Ljava/lang/Thread;
.source "PackageFeatureUserChangePersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const-string p1, "PackageFeatureUserChangePersister"

    .line 202
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmLock(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 211
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$msaveFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$mloadFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fputmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Z)V

    .line 214
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method
