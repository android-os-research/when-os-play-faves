.class Lcom/samsung/android/wfd/ConnectionMode$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/ConnectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/ConnectionMode;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/wfd/ConnectionMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/wfd/ConnectionMode;

    .line 165
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "ownerPackageName"

    const-string v4, ", PackageName : "

    const-string v5, "Display ID : "

    const-string v6, "PresentationObjectCnt : "

    const-string v7, "displayID"

    const/4 v8, -0x1

    if-eqz v1, :cond_7d

    .line 172
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v6, v6, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v5, v5, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11b

    .line 176
    :cond_7d
    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 177
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v6, v6, Lcom/samsung/android/wfd/ConnectionMode;->mPresentationObjectCnt:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v5, v5, Lcom/samsung/android/wfd/ConnectionMode;->mPresentDisplayID:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 181
    :cond_d2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11b

    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    goto :goto_11b

    .line 183
    :cond_e3
    const-string v1, "com.samsung.intent.action.UPDATE_HIDDEN_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 184
    const/4 v1, 0x0

    const-string v3, "update"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 185
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received mHiddenDisplayID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v3, v3, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 188
    :cond_117
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iput v8, v1, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    .line 191
    :cond_11b
    :goto_11b
    iget-object v1, p0, Lcom/samsung/android/wfd/ConnectionMode$2;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v1}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayInformation()V

    .line 192
    return-void
.end method
