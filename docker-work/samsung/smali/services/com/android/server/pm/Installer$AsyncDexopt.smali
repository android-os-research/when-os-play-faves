.class public Lcom/android/server/pm/Installer$AsyncDexopt;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncDexopt"
.end annotation


# static fields
.field public static final DEXOPT_STATE_FAIL:I = -0x1

.field public static final DEXOPT_STATE_SUCCESS:I = 0x0

.field public static final EXPECTED_MSG_SIZE:I = 0x3

.field public static final MSG_INDEX_HASHCODE:I = 0x1

.field public static final MSG_INDEX_RESULT:I = 0x0

.field public static final MSG_INDEX_TASK_SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logResult(II)V
    .registers 4

    .line 675
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dexopt result("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_18

    const-string/jumbo p1, "success"

    goto :goto_1a

    :cond_18
    const-string p1, "fail"

    .line 676
    :goto_1a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Installer"

    .line 675
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
