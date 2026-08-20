.class Lcom/samsung/android/sec_platform_library/FactoryPhone$2;
.super Landroid/os/Handler;
.source "FactoryPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sec_platform_library/FactoryPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response handler does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dummy handler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 51
    :pswitch_50
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dummy handler : BASE_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    nop

    .line 57
    :goto_73
    return-void

    :pswitch_data_74
    .packed-switch 0x3e8
        :pswitch_50
    .end packed-switch
.end method
