.class public final synthetic Lcom/android/server/am/CleanerAppManager$CleanerAppInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;

    invoke-static {v0, v1, p1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->$r8$lambda$OqzxJ2OCEo_lM2FAMgRCHXqcB_c(JLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z

    move-result p0

    return p0
.end method
