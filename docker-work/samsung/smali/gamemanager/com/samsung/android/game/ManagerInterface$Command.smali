.class public Lcom/samsung/android/game/ManagerInterface$Command;
.super Ljava/lang/Object;
.source "ManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/ManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# static fields
.field public static final BOOST_ACQUIRE:Ljava/lang/String; = "boost_acquire"

.field public static final BOOST_RELEASE:Ljava/lang/String; = "boost_release"

.field public static final BOOST_SET_DVFS_VALUE:Ljava/lang/String; = "boost_set_dvfs_value"

.field public static final CONTROL_WIFI_SWITCH:Ljava/lang/String; = "control_wifi_switch"

.field public static final GET_AVAILABLE_REFRESH_RATE_LIST:Ljava/lang/String; = "get_available_refresh_rate_list"

.field public static final GET_NETWORK_STATS:Ljava/lang/String; = "get_network_stats"

.field public static final GET_PACKAGE_UID_PID:Ljava/lang/String; = "get_pid_uid"

.field public static final GET_SYSFS_DATA:Ljava/lang/String; = "get_sysfs_data"

.field public static final GET_THREAD_DATA:Ljava/lang/String; = "get_thread_data"

.field public static final GET_THREAD_INFO:Ljava/lang/String; = "get_thread_info"

.field public static final GET_THREAD_NAMES:Ljava/lang/String; = "get_thread_names"

.field public static final IS_VARIABLE_REFRESH_RATE_SUPPORTED:Ljava/lang/String; = "is_variable_refresh_rate_supported"

.field public static final REQUEST_TO_REMOVE_REFRESH_RATE:Ljava/lang/String; = "request_to_remove_refresh_rate"

.field public static final REQUEST_TO_SET_REFRESH_RATE:Ljava/lang/String; = "request_to_set_refresh_rate"

.field public static final SET_RENDER_THREAD_AFFINITY:Ljava/lang/String; = "set_render_thread_affinity"

.field public static final SET_THREADS_AFFINITIES:Ljava/lang/String; = "set_threads_affinities"

.field public static final SET_THREAD_AFFINITY_BIGCORE:Ljava/lang/String; = "set_thread_affinity_bigcore"

.field public static final SET_THREAD_AFFINITY_LITTLECORE:Ljava/lang/String; = "set_thread_affinity_littlecore"

.field public static final UNSET_RENDER_THREAD_AFFINITY:Ljava/lang/String; = "unset_render_thread_affinity"

.field public static final WRITE_FILE:Ljava/lang/String; = "write_file"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
