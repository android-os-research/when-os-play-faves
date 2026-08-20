.class public Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$Key;
.super Ljava/lang/Object;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static final blacklist AIRPLANE_MODE_STATUS:Ljava/lang/String; = "airplane_mode_status"

.field public static final blacklist ALLOW_NET_TYPE_LIST:Ljava/lang/String; = "allow_nettype_list"

.field public static final blacklist NITZ_STATUS:Ljava/lang/String; = "nitz_status"

.field public static final blacklist NR_MODE_CHANGED:Ljava/lang/String; = "nr_mode_changed"

.field public static final blacklist SET_PREFERRED_NETWORK_MODE:Ljava/lang/String; = "set_preferred_network_mode"

.field public static final blacklist SHUTDOWN:Ljava/lang/String; = "shutdown"

.field public static final blacklist TMO_DEVICE_CONFIG:Ljava/lang/String; = "tmo_device_config"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
