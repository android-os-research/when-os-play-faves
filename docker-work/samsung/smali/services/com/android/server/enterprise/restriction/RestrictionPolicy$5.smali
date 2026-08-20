.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;
.super Landroid/os/storage/StorageEventListener;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .line 2603
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", oldState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ejecting"

    .line 2609
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string/jumbo p1, "unmounted"

    .line 2610
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 2611
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mmountSdCard(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    :cond_3d
    const-string p1, "checking"

    .line 2614
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string/jumbo p1, "mounted"

    .line 2615
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 2616
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$fgetmStorageListener(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 2617
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_6c

    const-string p0, "SDCard Remounted with Readonly permission"

    .line 2619
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_6c
    const-string p0, "SDCard Remounted with ReadWrite permission"

    .line 2621
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    const-string p0, "--onStorageStateChanged"

    .line 2624
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
