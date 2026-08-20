.class public Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SemShareMultiSelectSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final blacklist GALLERY_SETTING_KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final blacklist GALLERY_SETTING_KEY_QUICKSHARE_CATEGORY:Ljava/lang/String; = "QSCategory"

.field private static final blacklist GALLERY_SETTING_KEY_QUICKSHARE_INCLUDE_ORIGINAL:Ljava/lang/String; = "QSIncludeOriginal"

.field private static final blacklist GALLERY_SETTING_KEY_TRANSCODING:Ljava/lang/String; = "transcode"

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareMultiSelectSettingsFragment"


# instance fields
.field blacklist mRemoveLocation:Landroid/preference/SwitchPreference;

.field blacklist mTranscoding:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private blacklist isFreeForm()Z
    .registers 4

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 313
    .local v0, "windowMode":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1

    .line 316
    .end local v0    # "windowMode":I
    :cond_26
    return v1
.end method

.method private blacklist isSplitWindow()Z
    .registers 4

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 323
    .local v0, "windowMode":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 v2, 0x4

    if-ne v0, v2, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1

    .line 328
    .end local v0    # "windowMode":I
    :cond_29
    return v1
.end method

.method private blacklist isTablet()Z
    .registers 3

    .line 332
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private blacklist semSetRemoveLocationVisibility(Lcom/android/internal/app/ChooserActivity;)V
    .registers 11
    .param p1, "activity"    # Lcom/android/internal/app/ChooserActivity;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 99
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_a8

    if-nez v0, :cond_a

    goto/16 :goto_a8

    .line 102
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 103
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    .line 104
    iget-boolean v3, p1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    :cond_24
    const/4 v1, 0x0

    .line 109
    .local v1, "locationCountWithWrongUri":I
    iget-object v3, p1, Lcom/android/internal/app/ChooserActivity;->mLocationList:Ljava/util/HashMap;

    .line 110
    .local v3, "locationList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    iget-boolean v4, p1, Lcom/android/internal/app/ChooserActivity;->mShouldLocationSettingShown:Z

    if-eqz v4, :cond_a2

    .line 111
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 112
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 113
    .local v5, "key":I
    iget-object v7, p1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 114
    iget-object v7, p1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 115
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_71

    invoke-virtual {p1, v6}, Lcom/android/internal/app/ChooserActivity;->semIsAbleToRemoveLocationFromUri(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 119
    .end local v5    # "key":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_71
    goto :goto_38

    .line 120
    :cond_72
    if-lez v1, :cond_93

    .line 121
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 122
    iget-object v4, p1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-le v4, v2, :cond_8a

    .line 123
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const v4, 0x1040c63

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_a7

    .line 125
    :cond_8a
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const v4, 0x1040c64

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_a7

    .line 128
    :cond_93
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    iget-boolean v5, p1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveDisabled:Z

    xor-int/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_a7

    .line 132
    :cond_a2
    iget-object v2, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :goto_a7
    return-void

    .line 100
    .end local v1    # "locationCountWithWrongUri":I
    .end local v3    # "locationList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    :cond_a8
    :goto_a8
    return-void
.end method

.method private blacklist semSetTranscodingVisibility(Lcom/android/internal/app/ChooserActivity;)V
    .registers 5
    .param p1, "activity"    # Lcom/android/internal/app/ChooserActivity;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 138
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_67

    if-nez v0, :cond_9

    goto :goto_67

    .line 142
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_22

    .line 143
    const-string/jumbo v1, "transcode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    .line 144
    iget-boolean v2, p1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    :cond_22
    iget-boolean v1, p1, Lcom/android/internal/app/ChooserActivity;->mShouldTranscodingSettingShown:Z

    if-eqz v1, :cond_61

    .line 149
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->semIsSupportedHdrToSdr()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 152
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c6f

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_66

    .line 154
    :cond_40
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c6e

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_66

    .line 157
    :cond_49
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 158
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c72

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_66

    .line 160
    :cond_58
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    const v2, 0x1040c71

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_66

    .line 164
    :cond_61
    iget-object v1, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :goto_66
    return-void

    .line 139
    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 170
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->setHasOptionsMenu(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 63
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-nez v0, :cond_c

    .line 64
    return-void

    .line 67
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 68
    const v2, 0x117007a

    invoke-virtual {p0, v2}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10602df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->semSetCategoryBGColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 72
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->semSetRemoveLocationVisibility(Lcom/android/internal/app/ChooserActivity;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->semSetTranscodingVisibility(Lcom/android/internal/app/ChooserActivity;)V

    .line 75
    const-string v3, "QSIncludeOriginal"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 76
    .local v3, "quickShareIncludeOriginal":Landroid/preference/SwitchPreference;
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SUPPORT_INCLUDE_ORIGINAL_OPTION_MENU:Z

    const-string v5, "QSCategory"

    if-eqz v4, :cond_70

    iget-boolean v4, v0, Lcom/android/internal/app/ChooserActivity;->mNeedIncludeOriginalOption:Z

    if-eqz v4, :cond_70

    .line 77
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 78
    .local v4, "qsPrefCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->semIsChinaFlavor(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 79
    const v5, 0x1040c6b

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_61

    .line 81
    :cond_5b
    const v5, 0x1040c6c

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 83
    :goto_61
    iget-boolean v5, v0, Lcom/android/internal/app/ChooserActivity;->mIncludeOriginalEnabled:Z

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    const v5, 0x1040c69

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 86
    .end local v4    # "qsPrefCategory":Landroid/preference/PreferenceCategory;
    goto :goto_7c

    .line 87
    :cond_70
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 88
    .restart local v4    # "qsPrefCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    .end local v4    # "qsPrefCategory":Landroid/preference/PreferenceCategory;
    :goto_7c
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_8e

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 92
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    .line 95
    :cond_8e
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 279
    .local v0, "activityContext":Landroid/app/Activity;
    const v1, 0x109014b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "fragmentView":Landroid/view/View;
    const v2, 0x1020552

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 281
    .local v2, "toolbar":Landroid/widget/Toolbar;
    const/4 v3, 0x1

    if-eqz v2, :cond_73

    .line 282
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 283
    const v4, 0x1040c79

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10602d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 285
    new-instance v5, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment$1;-><init>(Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 294
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v4, v3, :cond_65

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isFreeForm()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->isSplitWindow()Z

    move-result v4

    if-nez v4, :cond_65

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10808a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_73

    .line 297
    :cond_65
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10602df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 301
    :cond_73
    :goto_73
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 302
    .local v4, "actionBar":Landroid/app/ActionBar;
    if-eqz v4, :cond_7c

    .line 303
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 305
    :cond_7c
    invoke-virtual {p0, v3}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->setHasOptionsMenu(Z)V

    .line 306
    return-object v1
.end method

.method public whitelist onDestroyView()V
    .registers 3

    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 224
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-eqz v0, :cond_f

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 227
    :cond_f
    return-void
.end method

.method public whitelist onPause()V
    .registers 6

    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 202
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 204
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1b

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 207
    :cond_1b
    if-eqz v0, :cond_3c

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 208
    const v2, 0x102055c

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 209
    .local v2, "view1":Landroid/view/View;
    const v3, 0x1020270

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 210
    .local v3, "view2":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v2, :cond_37

    .line 211
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 213
    :cond_37
    if-eqz v3, :cond_3c

    .line 214
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 217
    .end local v2    # "view1":Landroid/view/View;
    .end local v3    # "view2":Landroid/view/View;
    :cond_3c
    return-void
.end method

.method public whitelist onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 231
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 232
    .local v0, "isChecked":Z
    :goto_10
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity;

    .line 234
    .local v3, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ae

    :cond_22
    goto :goto_41

    :sswitch_23
    const-string v6, "location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v5, v2

    goto :goto_41

    :sswitch_2d
    const-string/jumbo v6, "transcode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v5, v1

    goto :goto_41

    :sswitch_38
    const-string v6, "QSIncludeOriginal"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v5, 0x2

    :goto_41
    packed-switch v5, :pswitch_data_bc

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemShareMultiSelectSettingsFragment"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 242
    :pswitch_61
    iput-boolean v0, v3, Lcom/android/internal/app/ChooserActivity;->mIncludeOriginalEnabled:Z

    .line 243
    if-eqz v0, :cond_93

    .line 244
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7c

    .line 245
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_70

    goto :goto_77

    .line 247
    :cond_70
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    iput-boolean v2, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    .line 250
    :goto_77
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 252
    :cond_7c
    iput-boolean v1, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveDisabled:Z

    .line 253
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_ad

    .line 254
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 255
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 257
    :cond_8d
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_ad

    .line 260
    :cond_93
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mRemoveLocation:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_9a

    .line 261
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 263
    :cond_9a
    iget-object v4, p0, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->mTranscoding:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_a1

    .line 264
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 266
    :cond_a1
    iput-boolean v2, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveDisabled:Z

    .line 268
    goto :goto_ad

    .line 239
    :pswitch_a4
    iput-boolean v0, v3, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    .line 240
    goto :goto_ad

    .line 236
    :pswitch_a7
    if-nez v0, :cond_aa

    move v2, v1

    :cond_aa
    iput-boolean v2, v3, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    .line 237
    nop

    .line 272
    :cond_ad
    :goto_ad
    return v1

    :sswitch_data_ae
    .sparse-switch
        0x1ec80017 -> :sswitch_38
        0x3ebd0c95 -> :sswitch_2d
        0x714f9fb5 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a4
        :pswitch_61
    .end packed-switch
.end method

.method public whitelist onResume()V
    .registers 6

    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 180
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareMultiSelectSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 182
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1b

    .line 183
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semSetForceRoundedCorner(Z)V

    .line 185
    :cond_1b
    if-eqz v0, :cond_3c

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 186
    const v2, 0x102055c

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, "view1":Landroid/view/View;
    const v3, 0x1020270

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 188
    .local v3, "view2":Landroid/view/View;
    const/4 v4, 0x4

    if-eqz v2, :cond_37

    .line 189
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 191
    :cond_37
    if-eqz v3, :cond_3c

    .line 192
    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 195
    .end local v2    # "view1":Landroid/view/View;
    .end local v3    # "view2":Landroid/view/View;
    :cond_3c
    return-void
.end method
