.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$1:Landroid/location/CountryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/CountryDetectorService;

    iput-object p2, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;->f$1:Landroid/location/CountryListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/CountryDetectorService;

    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;->f$1:Landroid/location/CountryListener;

    invoke-static {v0, p0}, Lcom/android/server/CountryDetectorService;->$r8$lambda$GuhZH7A_aehxVbgO-4H_eNK2Ucw(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    return-void
.end method
