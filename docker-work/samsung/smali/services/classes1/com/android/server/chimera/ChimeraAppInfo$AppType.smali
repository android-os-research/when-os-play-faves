.class public Lcom/android/server/chimera/ChimeraAppInfo$AppType;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppType"
.end annotation


# static fields
.field public static final ALARM_APP:I = 0x4

.field public static final ALLOWLIST_APP:I = 0x1000

.field public static final BT_CONNECTION_APP:I = 0x200000

.field public static final DEFAULT_APP:I = 0x10

.field public static final DOWNLOADING_APP:I = 0x20

.field public static final G1:I = 0x3

.field public static final G2:I = 0x2800c

.field public static final G3:I = 0xec0

.field public static final G4:I = 0xb57030

.field public static final HAS_ACTIVITY:I = 0x1000000

.field public static final HOME_APP:I = 0x10000

.field public static final IMPORTANT_SERVICE:I = 0x40000

.field public static final IPM_LAUNCH_APP:I = 0x80000

.field public static final LOCKSCREEN_APP:I = 0x800000

.field public static final NAVIGATING_APP:I = 0x40

.field public static final NEVER_KILLED_APP:I = 0x100000

.field public static final NEXT_APP:I = 0x8000

.field public static final NORMAL_SERVICE:I = 0x20000

.field public static final NOTIFICATION_APP:I = 0x8

.field public static final PLAYINGMUSIC_APP:I = 0x80

.field public static final PREINSTALL_APP:I = 0x2

.field public static final PROTECTEDADJ_APP:I = 0x2000

.field public static final PROTECT_ON_QATEST_APP:I = 0x400000

.field public static final RECORDINGAUDIO_APP:I = 0x200

.field public static final RECORDINGSCREEN_APP:I = 0x400

.field public static final THIRDPARTY_APP:I = 0x1

.field public static final WALLPAPER_APP:I = 0x4000

.field public static final WIDGET_APP:I = 0x800


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraAppInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppInfo$AppType;->this$0:Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
