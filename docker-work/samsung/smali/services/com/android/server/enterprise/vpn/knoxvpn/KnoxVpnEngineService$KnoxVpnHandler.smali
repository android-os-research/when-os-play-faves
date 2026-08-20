.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;
.super Landroid/os/Handler;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxVpnHandler"
.end annotation


# static fields
.field public static final ACTION_AIRPLANE_MODE_TURNED_ON:I = 0x14

.field public static final ACTION_BOOT_COMPLETED:I = 0xf

.field public static final ACTION_CONTAINER_ADMIN_CHANGED:I = 0xc

.field public static final ACTION_DATA_CLEARED:I = 0x22

.field public static final ACTION_HANDLE_CAPTIVE_PORTAL:I = 0x1d

.field public static final ACTION_LOCKED_BOOT_COMPLETED:I = 0xe

.field public static final ACTION_MIGRATE_KNOX10_KNOX20:I = 0xa

.field public static final ACTION_PACKAGE_ADDED:I = 0x2

.field public static final ACTION_PACKAGE_REMOVED:I = 0x3

.field public static final ACTION_REMOVE_CREDENTIALS_KEYSTORE:I = 0x10

.field public static final ACTION_SEND_PROXY_BROADCAST:I = 0x12

.field public static final ACTION_START_VPN_CONNECTION_CLIENT:I = 0x17

.field public static final ACTION_STOP_VPN_CONNECTION_CLIENT:I = 0x18

.field public static final ACTION_UCM_REFRESH_DONE:I = 0x1c

.field public static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0x16

.field public static final ACTION_UPDATE_IPTABLE_RULES_ETHERNET:I = 0x1b

.field public static final ACTION_UPDATE_IPTABLE_RULES_MOBILE:I = 0x1a

.field public static final ACTION_UPDATE_IPTABLE_RULES_WIFI:I = 0x19

.field public static final ACTION_USB_STATUS:I = 0x21

.field public static final ACTION_USER_PRESENT:I = 0x15

.field public static final ACTION_USER_REMOVED:I = 0x6

.field public static final ACTION_USER_STARTED:I = 0x9

.field public static final ACTION_USER_SWITCHED:I = 0xd

.field public static final ACTION_VPN_INTERFACE_STATUS:I = 0x1

.field public static final ADMIN_REMOVAL_ACTION:I = 0x13

.field public static final CONNECTIVITY_ACTION:I = 0x4

.field public static final MSG_SHOW_TOAST:I = 0x20


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V
    .registers 3

    .line 5577
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 5578
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method
