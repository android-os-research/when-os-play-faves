.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->$r8$lambda$2W_Znt4oiSTghy0xBOqTFbNZLOA(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
