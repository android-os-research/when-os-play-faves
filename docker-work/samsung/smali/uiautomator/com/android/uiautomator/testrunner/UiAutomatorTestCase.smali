.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.super Ljunit/framework/TestCase;
.source "UiAutomatorTestCase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DISABLE_IME:Ljava/lang/String; = "disable_ime"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final STUB_IME_PACKAGE:Ljava/lang/String; = "com.android.testing.stubime"


# instance fields
.field private mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mParams:Landroid/os/Bundle;

.field private mShouldDisableIme:Z

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    return-void
.end method

.method private restoreActiveIme()V
    .registers 1

    .line 164
    return-void
.end method

.method private setStubIme()V
    .registers 9

    .line 132
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 133
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_65

    .line 136
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .local v1, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x0

    .line 140
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "com.android.testing.stubime"

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 141
    .local v5, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 142
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 144
    .end local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_37
    goto :goto_17

    .line 145
    :cond_38
    if-eqz v3, :cond_53

    .line 149
    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_43

    .line 151
    return-void

    .line 153
    :cond_43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 154
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v5, -0x1

    const-string v6, "selected_input_method_subtype"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    const-string v5, "default_input_method"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    return-void

    .line 146
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_53
    new-instance v4, Ljava/lang/RuntimeException;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Required testing fixture missing: IME package (%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v3    # "id":Ljava/lang/String;
    :cond_65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ActivityThread.currentApplication() is null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAutomationSupport()Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUiDevice()Lcom/android/uiautomator/core/UiDevice;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    return-object v0
.end method

.method setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V
    .registers 2
    .param p1, "automationSupport"    # Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 119
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 120
    return-void
.end method

.method setParams(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 115
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V
    .registers 2
    .param p1, "uiDevice"    # Lcom/android/uiautomator/core/UiDevice;

    .line 107
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 108
    return-void
.end method

.method protected setUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 59
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    const-string v1, "disable_ime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    .line 60
    if-eqz v0, :cond_18

    .line 61
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setStubIme()V

    .line 63
    :cond_18
    return-void
.end method

.method public sleep(J)V
    .registers 3
    .param p1, "ms"    # J

    .line 128
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 129
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    if-eqz v0, :cond_7

    .line 68
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->restoreActiveIme()V

    .line 70
    :cond_7
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 71
    return-void
.end method
