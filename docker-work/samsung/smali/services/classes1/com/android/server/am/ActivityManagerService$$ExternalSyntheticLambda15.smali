.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:[I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:[I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$mLSgj0_-2qvr-t2-xE8C-lAuaIg([ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
