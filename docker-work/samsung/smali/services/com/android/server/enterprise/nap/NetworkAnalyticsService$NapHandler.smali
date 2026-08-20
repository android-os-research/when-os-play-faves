.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NapHandler"
.end annotation


# static fields
.field public static final ACTION_ACTIVATE_MONITOR_CLIENT:I = 0x1

.field public static final ACTION_BOOT_COMPLETED:I = 0x3

.field public static final ACTION_INITIALIZE_NAP:I = 0x4

.field public static final ACTION_NEW_PROFILE_REGISTERED:I = 0xa

.field public static final ACTION_ON_ADMIN_REMOVED:I = 0x9

.field public static final ACTION_ON_PRE_ADMIN_REMOVED:I = 0x8

.field public static final ACTION_PACKAGE_ADDED:I = 0x7

.field public static final ACTION_PACKAGE_REMOVED:I = 0x6

.field public static final ACTION_PROFILE_STATUS:I = 0xe

.field public static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0xc

.field public static final ACTION_UNREGISTER_CLIENT:I = 0x5

.field public static final ACTION_USER_REMOVED:I = 0xb


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .registers 3

    .line 1541
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 1542
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method
