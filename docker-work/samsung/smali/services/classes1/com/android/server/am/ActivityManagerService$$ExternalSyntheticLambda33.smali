.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/ActivityManagerService;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$3JB-oqOoCyFBw4G1za6fKRC8J88(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
