.class public final synthetic Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:[B

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>([B[BZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;->f$0:[B

    iput-object p2, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;->f$1:[B

    iput-boolean p3, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;->f$0:[B

    iget-object v1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;->f$1:[B

    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->$r8$lambda$lPS8_IY66qPHOT9sSVPV-GqVW-A([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result p0

    return p0
.end method
