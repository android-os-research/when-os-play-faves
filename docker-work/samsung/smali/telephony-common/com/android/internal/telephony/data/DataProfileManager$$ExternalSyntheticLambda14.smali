.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$CYwPX0W-mY2zeKuj_x1hd11M9OI(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-void
.end method
