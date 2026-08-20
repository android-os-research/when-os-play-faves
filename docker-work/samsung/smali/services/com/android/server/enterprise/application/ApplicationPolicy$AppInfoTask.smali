.class public Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCmd:Ljava/lang/String;

.field public final mUsage:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCmd(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsage(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 6913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6914
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 6915
    iput-wide p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)I
    .registers 7

    .line 6945
    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 6946
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_11
    sub-long/2addr v0, v2

    long-to-int p0, v0

    neg-int p0, p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 6903
    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->compareTo(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 6924
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object p0
.end method

.method public getUsage()J
    .registers 3

    .line 6933
    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-wide v0
.end method
