.class public Lcom/android/server/dreams/DreamController$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-nez v0, :cond_2c

    const-string v0, "DreamController"

    const-string v1, "Bound dream did not connect in the time allotted"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "slow to connect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_2c
    return-void
.end method
