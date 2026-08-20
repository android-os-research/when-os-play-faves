.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    iput-wide p2, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;->f$1:J

    iput p4, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;->f$1:J

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/data/DataNetwork;->$r8$lambda$krB4Tj8D_XCsoRQ1XNgyxsHLky0(Lcom/android/internal/telephony/data/DataNetwork;JI)V

    return-void
.end method
