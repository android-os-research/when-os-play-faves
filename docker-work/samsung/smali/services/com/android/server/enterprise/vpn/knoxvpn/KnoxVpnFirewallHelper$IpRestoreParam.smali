.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;
.super Ljava/lang/Object;
.source "KnoxVpnFirewallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IpRestoreParam"
.end annotation


# instance fields
.field public actionChain:Ljava/lang/String;

.field public actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

.field public firstParam:Ljava/lang/String;

.field public jumpChain:Ljava/lang/String;

.field public secondParam:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetactionChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionChain:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetfirstParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->firstParam:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetjumpChain(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->jumpChain:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsecondParam(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->secondParam:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputactionType(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V
    .registers 7

    .line 244
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionChain:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->firstParam:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->jumpChain:Ljava/lang/String;

    .line 248
    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->secondParam:Ljava/lang/String;

    .line 249
    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    return-void
.end method
