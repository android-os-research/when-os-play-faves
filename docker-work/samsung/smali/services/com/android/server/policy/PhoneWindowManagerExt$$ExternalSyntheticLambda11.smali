.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->$r8$lambda$U4YXybVJykoVtVVK2v_QY_6iWNs(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    return p0
.end method
