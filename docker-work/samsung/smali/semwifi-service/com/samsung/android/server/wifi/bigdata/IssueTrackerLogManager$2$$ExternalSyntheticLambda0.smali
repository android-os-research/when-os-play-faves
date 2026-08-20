.class public final synthetic Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$2;->$r8$lambda$OqYxH1e8P2S2aVPk70OsDNTcyTU(ILcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    return-void
.end method
