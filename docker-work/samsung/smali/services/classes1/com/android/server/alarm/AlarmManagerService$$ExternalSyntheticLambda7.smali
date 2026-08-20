.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;->f$0:I

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-static {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->$r8$lambda$ofjK-sB4EH3PFdOcCMPihndbZX4(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method
