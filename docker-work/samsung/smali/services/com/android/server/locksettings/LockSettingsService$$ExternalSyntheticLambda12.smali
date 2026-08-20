.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$0:I

    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->$r8$lambda$8J6KUr7Op7Q4laSYt_FWDwOYHlY(ILcom/android/server/pm/PersonaManagerService;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
