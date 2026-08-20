.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;
.super Ljava/lang/Object;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordRequested(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/lang/String;)V
    .registers 8

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPasswordRequested sta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    .line 938
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 942
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {p0, v2, v3, v3, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_80

    .line 943
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedApConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedApConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v0

    .line 944
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 945
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_80

    .line 947
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPasswordRequested - not exit config for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    return-void
.end method

.method public onSessionClosed(Ljava/lang/String;)V
    .registers 3

    .line 953
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
