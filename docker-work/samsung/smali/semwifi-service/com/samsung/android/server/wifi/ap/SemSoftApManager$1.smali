.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;
.super Ljava/lang/Object;
.source "SemSoftApManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .registers 3

    return-void
.end method

.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .registers 11

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTurnOnScanMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmIsTurnOnScanMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " onCapabilityChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_25

    return-void

    .line 232
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldCountryCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nold6GhzChannel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nold5GhzChannel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nold2GhzChannel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old6GhzChannel:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old5GhzChannel:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old2GhzChannel:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/net/wifi/SoftApCapability;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 241
    invoke-virtual {p1, v2}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    .line 242
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    .line 243
    invoke-virtual {p1, v4}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v5

    array-length v5, v5

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newCountryCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nnew6GhzChannel:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\nnew5GhzChannel:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\nnew2GhzChannel:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " new6GhzChannel:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " new5GhzChannel:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " new2GhzChannel:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v0, :cond_21a

    .line 254
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object v7

    if-eqz v7, :cond_1f3

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_138

    goto/16 :goto_1f3

    .line 258
    :cond_138
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_157

    const-string v7, "case2"

    .line 259
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 2"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    goto/16 :goto_204

    .line 262
    :cond_157
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v7

    if-nez v7, :cond_174

    if-eqz v2, :cond_174

    const-string v7, "case3"

    .line 263
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 3"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    goto/16 :goto_204

    .line 266
    :cond_174
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v7

    if-nez v7, :cond_191

    if-eqz v3, :cond_191

    const-string v7, "case4"

    .line 267
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 4"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    goto/16 :goto_204

    .line 270
    :cond_191
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v7

    if-nez v7, :cond_1ad

    if-eqz v5, :cond_1ad

    const-string v7, "case5"

    .line 271
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 5"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    goto :goto_204

    .line 274
    :cond_1ad
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v7

    if-lez v7, :cond_1c9

    if-nez v2, :cond_1c9

    const-string v7, "case6"

    .line 275
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 6"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    goto :goto_204

    .line 278
    :cond_1c9
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v7

    if-lez v7, :cond_1e5

    if-nez v3, :cond_1e5

    const-string v7, "case7"

    .line 279
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 7"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    goto :goto_204

    :cond_1e5
    const-string p1, "case8"

    .line 284
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v1, "case 8"

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    move v4, v6

    goto :goto_204

    :cond_1f3
    :goto_1f3
    const-string v7, "case1"

    .line 255
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v7, "case 1"

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    :goto_204
    if-eqz v4, :cond_21a

    .line 290
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 292
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 293
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 297
    :cond_21a
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmIsTurnOnScanMode()Z

    move-result p1

    if-eqz p1, :cond_241

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/SoftApCapability;

    move-result-object p1

    if-eqz p1, :cond_241

    if-eqz v0, :cond_241

    .line 298
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfputmIsTurnOnScanMode(Z)V

    .line 299
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetAOSPWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->removeMessages(I)V

    :cond_241
    return-void
.end method

.method public onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnectedClientsChanged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",:clients size,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSoftApManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInfoChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetMHSDBG()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfoChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_2d
    return-void
.end method

.method public onStateChanged(II)V
    .registers 7

    const-string p2, "SemSoftApManager"

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x66

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_87

    .line 187
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 188
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->wifiApSessionStarted()V

    .line 190
    :cond_36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSKT()Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "SemSoftApManager"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch DUN timeout + isDunCheckRequired :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, p2, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_87

    .line 194
    :cond_66
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    const-string v1, "SemSoftApManager"

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiap enabled set isDunCheckRequired :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    const/16 v1, 0xc

    if-ne p1, v1, :cond_a0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 199
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->setUpHostapdAidl()I

    .line 201
    :cond_a0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_ba

    move v2, v3

    goto :goto_bb

    :cond_ba
    move v2, v0

    :goto_bb
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSoftApState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " csc_op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSoftApManager"

    .line 204
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v1

    if-eqz v1, :cond_11d

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v1

    if-eqz v1, :cond_11d

    :cond_114
    const/16 v1, 0xa

    if-ne p1, v1, :cond_11d

    .line 207
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mpersistWifiApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    :cond_11d
    const/16 v1, 0xb

    if-eq p1, v1, :cond_125

    const/16 v1, 0xe

    if-ne p1, v1, :cond_171

    .line 210
    :cond_125
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result p1

    if-eqz p1, :cond_13e

    .line 211
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->wifiApSessionStop()V

    .line 213
    :cond_13e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->removeMessages(I)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/Network;)V

    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->stopHostapdAidl()V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    monitor-enter p1

    .line 220
    :try_start_167
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 221
    monitor-exit p1

    :cond_171
    return-void

    :catchall_172
    move-exception p0

    monitor-exit p1
    :try_end_174
    .catchall {:try_start_167 .. :try_end_174} :catchall_172

    throw p0
.end method
