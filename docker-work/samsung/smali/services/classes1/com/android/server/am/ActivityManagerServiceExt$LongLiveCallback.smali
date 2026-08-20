.class public Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongLiveCallback"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetref(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 673
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string p0, "-"

    goto :goto_2a

    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
