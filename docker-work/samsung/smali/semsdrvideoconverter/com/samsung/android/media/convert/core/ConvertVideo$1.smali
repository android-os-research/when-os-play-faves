.class Lcom/samsung/android/media/convert/core/ConvertVideo$1;
.super Ljava/lang/Object;
.source "ConvertVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/convert/core/ConvertVideo;->prepareAudioCodec()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/convert/core/ConvertVideo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/media/convert/core/ConvertVideo;

    .line 478
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo$1;->this$0:Lcom/samsung/android/media/convert/core/ConvertVideo;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z
    invoke-static {v0, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->access$002(Lcom/samsung/android/media/convert/core/ConvertVideo;Z)Z

    .line 483
    return-void
.end method
