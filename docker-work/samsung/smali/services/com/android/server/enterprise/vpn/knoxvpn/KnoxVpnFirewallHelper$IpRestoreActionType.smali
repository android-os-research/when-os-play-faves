.class final enum Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;
.super Ljava/lang/Enum;
.source "KnoxVpnFirewallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpRestoreActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

.field public static final enum APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

.field public static final enum DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

.field public static final enum INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

.field public static final enum REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 254
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v1, "APPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, "INSERT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v7, "REMOVE_CHAIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 253
    sput-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->$VALUES:[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;
    .registers 2

    .line 253
    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;
    .registers 1

    .line 253
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->$VALUES:[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    return-object v0
.end method
