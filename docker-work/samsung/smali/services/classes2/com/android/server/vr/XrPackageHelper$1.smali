.class public Lcom/android/server/vr/XrPackageHelper$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "XrPackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/XrPackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrPackageHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrPackageHelper;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/server/vr/XrPackageHelper$1;->this$0:Lcom/android/server/vr/XrPackageHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "com.samsung.android.hmt.vrsvc"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---- XrPackageHelper onPackageAdded uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XrPackageHelper"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper$1;->this$0:Lcom/android/server/vr/XrPackageHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrPackageHelper;->setVrServicePackageState(Z)V

    :cond_29
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "com.samsung.android.hmt.vrsvc"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---- XrPackageHelper onPackageAppeared reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XrPackageHelper"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper$1;->this$0:Lcom/android/server/vr/XrPackageHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrPackageHelper;->setVrServicePackageState(Z)V

    :cond_29
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "com.samsung.android.hmt.vrsvc"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---- XrPackageHelper onPackageDisappeared reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XrPackageHelper"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper$1;->this$0:Lcom/android/server/vr/XrPackageHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrPackageHelper;->setVrServicePackageState(Z)V

    :cond_29
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    const-string v0, "com.samsung.android.hmt.vrsvc"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "XrPackageHelper"

    const-string v0, "---- XrPackageHelper onPackageModified ----"

    .line 101
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper$1;->this$0:Lcom/android/server/vr/XrPackageHelper;

    invoke-static {p0}, Lcom/android/server/vr/XrPackageHelper;->-$$Nest$misVrServiceEnabled(Lcom/android/server/vr/XrPackageHelper;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrPackageHelper;->setVrServicePackageState(Z)V

    :cond_18
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "com.samsung.android.hmt.vrsvc"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---- XrPackageHelper onPackageRemoved uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XrPackageHelper"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/android/server/vr/XrPackageHelper$1;->this$0:Lcom/android/server/vr/XrPackageHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrPackageHelper;->setVrServicePackageState(Z)V

    :cond_29
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3

    const-string p0, "com.samsung.android.hmt.vrsvc"

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "---- XrPackageHelper onPackageUpdateFinished uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ----"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XrPackageHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3

    const-string p0, "com.samsung.android.hmt.vrsvc"

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "---- XrPackageHelper onPackageUpdateStarted uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ----"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XrPackageHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method
