.class public interface abstract Lcom/android/server/wm/DisplayAreaPolicy$Provider;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# direct methods
.method public static fromResources(Landroid/content/res/Resources;)Lcom/android/server/wm/DisplayAreaPolicy$Provider;
    .registers 5

    const v0, 0x104033b

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 186
    new-instance p0, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;-><init>()V

    return-object p0

    .line 189
    :cond_13
    :try_start_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicy$Provider;
    :try_end_1d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_13 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t instantiate class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for config_deviceSpecificDisplayAreaPolicyProvider: make sure it has a public zero-argument constructor and implements DisplayAreaPolicy.Provider"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;
.end method
