.class public Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;
.super Ljava/lang/Object;
.source "FirewallIptCommandBuilder.java"


# static fields
.field public static final DATA_INTERFACE_NAME:Ljava/lang/String; = "rmnet+"

.field public static final IP6TABLES:Ljava/lang/String; = "/system/bin/ip6tables"

.field public static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field public static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final WIFI_INTERFACE_NAME:Ljava/lang/String; = "wlan+"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 387
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_47

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 390
    :cond_47
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4b
    return-object p0
.end method

.method public final chainCommandPart(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/enterprise/firewall/FirewallRuleAction;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    if-eqz p2, :cond_de

    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_de

    :cond_11
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p3, v3, :cond_19

    const-string v4, "-A"

    goto :goto_22

    :cond_19
    if-ne p3, v2, :cond_1e

    const-string v4, "-D"

    goto :goto_22

    :cond_1e
    if-ne p3, v1, :cond_da

    const-string v4, "-I"

    :goto_22
    const-string/jumbo v5, "out"

    .line 124
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_a1

    .line 125
    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    if-eq p2, v3, :cond_86

    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    if-eq p2, v2, :cond_86

    .line 126
    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    const/4 v2, 0x6

    if-ne p2, v2, :cond_41

    goto :goto_86

    .line 128
    :cond_41
    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    if-eqz p2, :cond_53

    .line 129
    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_4e

    goto :goto_53

    .line 137
    :cond_4e
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_53
    :goto_53
    if-ne p3, v1, :cond_70

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 134
    :cond_70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 127
    :cond_86
    :goto_86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-output"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    :cond_a1
    const-string/jumbo p3, "in"

    .line 140
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d6

    .line 141
    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    if-eq p2, v3, :cond_bb

    invoke-virtual {p4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_b7

    goto :goto_bb

    .line 144
    :cond_b7
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 142
    :cond_bb
    :goto_bb
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-input"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 147
    :cond_d6
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d9
    return-object p0

    .line 120
    :cond_da
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 108
    :cond_de
    :goto_de
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final checkUidForChain(I)Z
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_13

    const/4 v0, 0x6

    if-eq v0, p1, :cond_13

    if-eqz p1, :cond_13

    if-eq p0, p1, :cond_13

    const/4 v0, 0x3

    if-eq v0, p1, :cond_13

    const/4 v0, 0x7

    if-ne v0, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :cond_13
    :goto_13
    return p0
.end method

.method public final concatLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p2, :cond_7

    return-object p1

    .line 406
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 410
    :cond_20
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 411
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_34
    return-object p0
.end method

.method public createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/firewall/FirewallRule;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "both"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "out"

    const-string/jumbo v3, "in"

    if-eqz v1, :cond_35

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->concatLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_d9

    .line 90
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_51

    :cond_4a
    const-string p0, ""

    .line 99
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    .line 91
    :cond_51
    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/ip6tables -t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getChain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleType()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->chainCommandPart(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getHostnameOrIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->ipCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getPortLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->protocolAndPortCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->networkInterfaceCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->uidCommandPart(ILjava/lang/String;Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->jumpCommandPart(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_d9
    return-object v0
.end method

.method public createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/firewall/FirewallRule;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "both"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "out"

    const-string/jumbo v3, "in"

    if-eqz v1, :cond_35

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object p1

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->concatLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_d9

    .line 56
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_51

    :cond_4a
    const-string p0, ""

    .line 74
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    .line 57
    :cond_51
    :goto_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getChain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleType()I

    move-result v3

    .line 61
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    move-result-object v4

    .line 60
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->chainCommandPart(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getHostnameOrIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->ipCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getPort()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getPortLocation()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->protocolAndPortCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getNetworkInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->networkInterfaceCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->uidCommandPart(ILjava/lang/String;Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->jumpCommandPart(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_d9
    return-object v0
.end method

.method public final ipCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_9b

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9b

    const-string v2, "-"

    .line 159
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2c

    .line 161
    aget-object v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->isIP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->isIP(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v5, v6

    :goto_2d
    const-string/jumbo p0, "in"

    .line 171
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    if-nez v5, :cond_4d

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-s "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 175
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-m iprange --src-range "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_62
    const-string/jumbo p0, "out"

    .line 177
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_97

    if-nez v5, :cond_82

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-d "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 181
    :cond_82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-m iprange --dst-range "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 184
    :cond_97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9a
    return-object v0

    .line 167
    :cond_9b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isIP(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 418
    sget-object p0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final jumpCommandPart(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/firewall/FirewallRuleAction;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const-string p1, "-j ACCEPT"

    .line 272
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 273
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const-string p1, "-j DROP"

    .line 274
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 275
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2f

    const-string p1, "-j REJECT"

    .line 276
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 277
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_60

    .line 278
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3f

    goto :goto_60

    .line 296
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4d

    const-string p1, "-j LOG"

    .line 297
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 298
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5b

    const-string p1, "-j RETURN"

    .line 299
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 302
    :cond_5b
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 279
    :cond_60
    :goto_60
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getPort()Ljava/lang/String;

    move-result-object p1

    const-string v2, "-"

    const-string v3, ":"

    if-eqz v0, :cond_ae

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ae

    const-string v1, "-j DNAT --to-destination "

    if-eqz p1, :cond_9b

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9b

    .line 283
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 286
    :cond_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_ae
    if-eqz p1, :cond_cf

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_cf

    .line 290
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j REDIRECT --to-port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 293
    :cond_cf
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d2
    return-object p0
.end method

.method public final networkInterfaceCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_7d

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_7d

    :cond_11
    const-string v2, "both"

    .line 243
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "data"

    const-string/jumbo v4, "wifi"

    if-eqz v2, :cond_2f

    .line 244
    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->networkInterfaceCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->concatLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 245
    invoke-virtual {p0, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->networkInterfaceCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->concatLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_80

    .line 246
    :cond_2f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo v2, "in"

    const-string/jumbo v4, "out"

    if-eqz p0, :cond_57

    .line 247
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const-string p0, "-o wlan+"

    .line 248
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 249
    :cond_47
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    const-string p0, "-i wlan+"

    .line 250
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 252
    :cond_53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 254
    :cond_57
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 255
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_69

    const-string p0, "-o rmnet+"

    .line 256
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 257
    :cond_69
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    const-string p0, "-i rmnet+"

    .line 258
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 260
    :cond_75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 263
    :cond_79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 242
    :cond_7d
    :goto_7d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_80
    return-object v0
.end method

.method public final portCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "both"

    .line 350
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "in"

    const-string/jumbo v4, "out"

    if-eqz v2, :cond_21

    .line 351
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->portCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 352
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->portCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->concatLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_100

    .line 353
    :cond_21
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo v2, "remote"

    const-string/jumbo v4, "local"

    const-string v5, ""

    const-string v6, "--dport "

    const-string v7, "--sport "

    if-eqz p0, :cond_96

    .line 354
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_100

    .line 357
    :cond_5f
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 358
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_100

    .line 359
    :cond_79
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_92

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 362
    :cond_92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 364
    :cond_96
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fd

    .line 365
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c7

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 368
    :cond_c7
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e0

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 370
    :cond_e0
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f9

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 373
    :cond_f9
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 376
    :cond_fd
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_100
    return-object v0
.end method

.method public final protocolAndPortCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protocolAndPortCommandPart protocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " portRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " portLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3c

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    :cond_3c
    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    goto :goto_6e

    :cond_45
    if-eqz p2, :cond_63

    .line 317
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_63

    :cond_4e
    const-string/jumbo p1, "protocolAndPortCommandPart 3"

    .line 321
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "both"

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->protocolCommandPart(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->portCommandPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->appendArgsOnCommandsList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_79

    :cond_63
    :goto_63
    const-string/jumbo p2, "protocolAndPortCommandPart 2"

    .line 318
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->protocolCommandPart(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_79

    :cond_6e
    :goto_6e
    const-string/jumbo p0, "protocolAndPortCommandPart 1"

    .line 315
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 316
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_79
    return-object v0
.end method

.method public final protocolCommandPart(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "both"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "-p udp"

    const-string v2, "-p tcp"

    if-eqz v0, :cond_18

    .line 334
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_18
    const-string/jumbo v0, "tcp"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 337
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_25
    const-string/jumbo v0, "udp"

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 339
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_32
    const-string p1, ""

    .line 341
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_37
    return-object p0
.end method

.method public final uidCommandPart(ILjava/lang/String;Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/firewall/FirewallRuleAction;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "out"

    .line 198
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "-m owner --uid-owner "

    const/16 v3, 0x3e8

    if-nez v1, :cond_1b

    const-string/jumbo v1, "in"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 199
    :cond_1b
    invoke-virtual {p3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->getAction()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->checkUidForChain(I)Z

    move-result p0

    if-eqz p0, :cond_71

    if-lt p1, v3, :cond_3b

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    :cond_3b
    if-lez p1, :cond_5c

    if-ge p1, v3, :cond_5c

    .line 204
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "00000-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "99999"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    .line 206
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1001-99999"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    :goto_6d
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_71
    if-le p1, v3, :cond_8a

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_8a
    const-string p0, ""

    .line 217
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8f
    return-object v0
.end method
