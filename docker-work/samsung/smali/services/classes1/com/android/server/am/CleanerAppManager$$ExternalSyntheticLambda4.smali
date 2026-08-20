.class public final synthetic Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;->f$0:J

    iput-wide p3, p0, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;->f$0:J

    iget-wide v2, p0, Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda4;->f$1:J

    check-cast p1, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/am/CleanerAppManager;->$r8$lambda$LXYdSvd1fbVHXU2uTySzfmkQqmM(JJLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z

    move-result p0

    return p0
.end method
