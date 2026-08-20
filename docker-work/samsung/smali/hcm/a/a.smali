.class public La/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0xe

.field public static final B:I = 0x2328

.field public static final C:I = 0x5a

.field public static final D:I = 0x12c

.field public static final E:I = 0x0

.field public static final F:I = 0x1

.field public static final G:I = 0x2

.field public static final H:I = 0x3

.field public static final I:I = 0x0

.field public static final J:I = 0x1

.field public static final K:I = 0x14

.field public static final L:I = 0xa

.field public static final M:I = 0x64

.field public static final N:I = 0x3e8

.field public static final O:I = 0xa

.field public static final P:I = 0x1

.field public static final Q:I = 0x2

.field public static final R:I = 0x3c

.field public static final S:I = 0x5

.field public static final T:I = 0x46

.field public static final U:I = 0x0

.field public static final V:I = 0x11

.field public static final W:I = 0x1

.field public static final X:I = 0x2

.field public static final Y:I = 0x3

.field public static final Z:I = 0x1

.field public static final a:Ljava/lang/String; = "20210802-S1"

.field public static final a0:I = 0x2

.field public static final b:I = 0x0

.field public static final b0:Ljava/lang/String; = "adaptive_power_saving_setting"

.field public static final c:I = 0x1

.field public static final c0:Ljava/lang/String; = "com.samsung.android.hcm.AI_POWER_SAVING_MODE_REQ"

.field public static final d:I = 0x2

.field public static final d0:Ljava/lang/String; = "action"

.field public static final e:I = 0x3

.field public static final e0:Ljava/lang/String;

.field public static final f:I = 0x4

.field public static final f0:Ljava/lang/String; = "com.samsung.android.sm.battery.receiver.AIPowerSavingReceiver"

.field public static final g:I = 0x5

.field public static final g0:I = 0x3

.field public static final h:I = 0x0

.field public static final h0:I = 0x55

.field public static final i:I = 0x5

.field public static final i0:I = 0x37

.field public static final j:I = 0x1

.field public static final j0:I = 0x5

.field public static final k:I = 0x2

.field public static final k0:I = 0x1

.field public static final l:I = 0x3

.field public static final l0:I = 0x0

.field public static final m:I = 0x4

.field public static final n:I = 0xea60

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x6

.field public static final v:I = 0x7

.field public static final w:I = 0x1

.field public static final x:I = 0x64

.field public static final y:I = -0xd

.field public static final z:I = -0xc


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a;->e0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
