.class public Lcom/android/service/ims/TaskManager$MessageData;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/service/ims/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageData"
.end annotation


# instance fields
.field public blacklist mReason:Ljava/lang/String;

.field public blacklist mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

.field final synthetic blacklist this$0:Lcom/android/service/ims/TaskManager;


# direct methods
.method public constructor blacklist <init>(Lcom/android/service/ims/TaskManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/service/ims/TaskManager;

    .line 298
    iput-object p1, p0, Lcom/android/service/ims/TaskManager$MessageData;->this$0:Lcom/android/service/ims/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
