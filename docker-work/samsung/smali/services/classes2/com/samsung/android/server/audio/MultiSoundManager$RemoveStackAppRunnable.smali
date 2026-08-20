.class public Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveStackAppRunnable"
.end annotation


# instance fields
.field public final mRemoveTaskId:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V
    .registers 3

    .line 1168
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->mRemoveTaskId:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmTaskStack(Lcom/samsung/android/server/audio/MultiSoundManager;)Ljava/util/HashMap;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->mRemoveTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
