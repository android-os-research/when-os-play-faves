.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .registers 2

    .line 1032
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 1035
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1036
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fputmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/util/Pair;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 13

    .line 1045
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10c

    const/4 v3, 0x5

    const-string v4, "WifiProfileShare.Caster"

    const/4 v5, 0x0

    if-eq v0, v3, :cond_bd

    const/4 v3, 0x7

    if-eq v0, v3, :cond_b3

    const/16 v3, 0xe

    if-eq v0, v3, :cond_9a

    const/16 v3, 0x14

    if-eq v0, v3, :cond_3b

    const/16 v3, 0x16

    if-eq v0, v3, :cond_bd

    if-eq v0, v1, :cond_2b

    const/16 p1, 0xb

    if-eq v0, p1, :cond_24

    goto/16 :goto_129

    .line 1090
    :cond_24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mclearUserConfirmHistoryInternal(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    goto/16 :goto_129

    .line 1093
    :cond_2b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$msetMcfServiceForCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V

    .line 1094
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mcheckAndUnbindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    goto/16 :goto_129

    .line 1054
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcf service connected, retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_129

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mstartShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1057
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_7f

    const-string p0, "failed to start caster mode"

    .line 1058
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .line 1061
    :cond_7f
    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v6, 0x14

    iget p0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v7, p0, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0xbb8

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessageDelayed(IIIJ)V

    goto/16 :goto_129

    .line 1065
    :cond_8f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmActiveState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_129

    .line 1097
    :cond_9a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    if-eqz v0, :cond_ab

    .line 1098
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fputmWifiProfileInfo(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;)V

    goto/16 :goto_129

    .line 1100
    :cond_ab
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fputmWifiProfileInfo(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;)V

    goto/16 :goto_129

    .line 1069
    :cond_b3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_129

    .line 1070
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    goto :goto_129

    .line 1075
    :cond_bd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_105

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    if-eqz v0, :cond_f1

    .line 1080
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v5

    .line 1081
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1082
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_106

    .line 1084
    :cond_f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss confirm dialog, user data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    move v1, v5

    .line 1087
    :goto_106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0, v5, v1, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mstartActivityForUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZZLjava/lang/String;)V

    goto :goto_129

    .line 1047
    :cond_10c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mcheckAndGetShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fputmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/util/Pair;)V

    .line 1048
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_129

    .line 1049
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->access$000(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V

    .line 1050
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mcheckAndBindMcfService(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;)V

    :cond_129
    :goto_129
    return v2
.end method
