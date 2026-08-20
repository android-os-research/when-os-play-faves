.class public La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static b:La/b; = null

.field private static c:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, La/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()La/b;
    .registers 1

    sget-object v0, La/b;->b:La/b;

    if-nez v0, :cond_b

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    sput-object v0, La/b;->b:La/b;

    :cond_b
    sget-object v0, La/b;->b:La/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 1

    sget-object p0, La/b;->c:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
