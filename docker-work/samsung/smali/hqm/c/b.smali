.class public Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "schemever"

.field public static final B:I = 0x1

.field public static final C:Ljava/lang/String; = "c"

.field public static D:I = -0x1

.field public static E:I = 0x0

.field public static F:I = 0x1

.field public static G:I = 0x2

.field public static H:I = 0x3

.field public static I:I = 0x400

.field public static J:I = 0x0

.field public static K:I = 0x8

.field public static L:I = 0x1

.field public static M:I = 0x2

.field public static N:I = 0x1

.field public static O:I = 0x2

.field public static final P:Ljava/lang/String; = ""

.field public static final Q:J = 0xea60L

.field public static final R:J = 0x36ee80L

.field public static final S:J = 0x5265c00L

.field public static final T:Ljava/lang/String; = "com.samsung.context.hqmbigdata.intent"

.field public static final U:Ljava/lang/String; = "com.sec.android.intent.action.APP_HQM_SEND_REQ"

.field public static final V:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final W:Ljava/lang/String; = "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

.field public static final X:Ljava/lang/String; = "com.sec.android.intent.action.HQM_HW_STATUS_ACK"

.field public static final Y:Ljava/lang/String; = "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

.field public static final Z:Ljava/lang/String; = "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

.field public static final a:Z = true

.field public static final a0:Ljava/lang/String; = "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

.field public static final b:Ljava/lang/String; = "com.samsung.android.hqm"

.field public static final b0:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_USER_ID"

.field public static final c:Ljava/lang/String; = "com.samsung.android.dqagent"

.field public static final c0:Ljava/lang/String; = "com.samsung.android.dqagent.ACTION_DQA_DATA"

.field public static final d:Ljava/lang/String; = "com.samsung.android.dqagent.receiver.DQADataReceiver"

.field public static final d0:Ljava/lang/String; = "com.samsung.android.dqagent.ACTION_DQA_EM_DATA"

.field public static final e:Ljava/lang/String; = "com.samsung.android.dqagent.receiver.DQASendReceiver"

.field public static final e0:Ljava/lang/String; = "com.samsung.android.dqagent.ACTION_DQA_SEND_REQ"

.field public static final f:Ljava/lang/String; = "com.samsung.android.dqagent.receiver.DQASettingReceiver"

.field public static final f0:Ljava/lang/String; = "com.samsung.android.dqagent.ACTION_DQA_SETTING_INFO"

.field public static final g:Ljava/lang/String; = "cid"

.field public static final g0:Ljava/lang/String; = "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

.field public static final h:Ljava/lang/String; = "cvr"

.field public static final h0:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field public static final i:Ljava/lang/String; = "cmf"

.field public static final i0:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final j:Ljava/lang/String; = "crv"

.field public static final j0:Ljava/lang/String; = "com.samsung.android.providers.context"

.field public static final k:Ljava/lang/String; = "t"

.field public static final k0:Ljava/lang/String; = "ro.hwparam.ut"

.field public static final l:Ljava/lang/String; = "ph"

.field public static final l0:Ljava/lang/String; = "/efs/FactoryApp/HwPartProtoTypeSerialNo"

.field public static final m:Ljava/lang/String; = "th"

.field public static final m0:Ljava/lang/String; = "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

.field public static final n:Ljava/lang/String; = "sm"

.field public static final o:Ljava/lang/String; = "em"

.field public static final p:Ljava/lang/String; = "ftn"

.field public static final q:Ljava/lang/String; = "log"

.field public static final r:Ljava/lang/String; = "enclog"

.field public static final s:Ljava/lang/String; = "sn"

.field public static final t:Ljava/lang/String; = "un"

.field public static final u:Ljava/lang/String; = "cpuid"

.field public static final v:Ljava/lang/String; = "sgid"

.field public static final w:Ljava/lang/String; = "cscc"

.field public static final x:Ljava/lang/String; = "testd"

.field public static final y:Ljava/lang/String; = "appid"

.field public static final z:Ljava/lang/String; = "mode"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    rsub-int v0, v0, 0x400

    sput v0, Lc/b;->J:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
