.class public abstract Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsService.java"

# interfaces
.implements Lorg/telegram/messenger/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsService"

.field static final TRANSACTION_extraCommand:I = 0x5

.field static final TRANSACTION_mayLaunchUrl:I = 0x4

.field static final TRANSACTION_newSession:I = 0x3

.field static final TRANSACTION_postMessage:I = 0x8

.field static final TRANSACTION_requestPostMessageChannel:I = 0x7

.field static final TRANSACTION_updateVisuals:I = 0x6

.field static final TRANSACTION_warmup:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string/jumbo v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p0, p0, v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string/jumbo v1, "android.support.customtabs.ICustomTabsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 69
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    :goto_0
    return v15

    .line 80
    :sswitch_0
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 82
    .local v4, "_arg02":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->warmup(J)Z

    move-result v11

    .line 83
    .local v11, "_arg21":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v11, :cond_0

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v15, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 87
    .end local v4    # "_arg02":J
    .end local v11    # "_arg21":Z
    :sswitch_1
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z

    move-result v9

    .line 90
    .local v9, "_arg13":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v9, :cond_1

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v15, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 94
    .end local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v9    # "_arg13":Z
    :sswitch_2
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 96
    .restart local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    .line 97
    sget-object v15, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 102
    .local v7, "_arg11":Landroid/net/Uri;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    .line 103
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 108
    .local v10, "_arg2":Landroid/os/Bundle;
    :goto_4
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 109
    .local v14, "_result2":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v10, v14}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v13

    .line 110
    .local v13, "_result1":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v13, :cond_4

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 99
    .end local v7    # "_arg11":Landroid/net/Uri;
    .end local v10    # "_arg2":Landroid/os/Bundle;
    .end local v13    # "_result1":Z
    .end local v14    # "_result2":Ljava/util/ArrayList;
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "_arg11":Landroid/net/Uri;
    goto :goto_3

    .line 105
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .line 111
    .restart local v13    # "_result1":Z
    .restart local v14    # "_result2":Ljava/util/ArrayList;
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 114
    .end local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_arg11":Landroid/net/Uri;
    .end local v10    # "_arg2":Landroid/os/Bundle;
    .end local v13    # "_result1":Z
    .end local v14    # "_result2":Ljava/util/ArrayList;
    :sswitch_3
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "_arg01":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    .line 117
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 122
    .local v8, "_arg12":Landroid/os/Bundle;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 123
    .restart local v10    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v10, :cond_6

    .line 125
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 119
    .end local v8    # "_arg12":Landroid/os/Bundle;
    .end local v10    # "_arg2":Landroid/os/Bundle;
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg12":Landroid/os/Bundle;
    goto :goto_6

    .line 128
    .restart local v10    # "_arg2":Landroid/os/Bundle;
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 133
    .end local v3    # "_arg01":Ljava/lang/String;
    .end local v8    # "_arg12":Landroid/os/Bundle;
    .end local v10    # "_arg2":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7

    .line 136
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 141
    .restart local v8    # "_arg12":Landroid/os/Bundle;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v11

    .line 142
    .restart local v11    # "_arg21":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v11, :cond_8

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 138
    .end local v8    # "_arg12":Landroid/os/Bundle;
    .end local v11    # "_arg21":Z
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg12":Landroid/os/Bundle;
    goto :goto_8

    .line 143
    .restart local v11    # "_arg21":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_9

    .line 146
    .end local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v8    # "_arg12":Landroid/os/Bundle;
    .end local v11    # "_arg21":Z
    :sswitch_5
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    .line 149
    sget-object v15, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 154
    .restart local v7    # "_arg11":Landroid/net/Uri;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->requestPostMessageChannel(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z

    move-result v11

    .line 155
    .restart local v11    # "_arg21":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v11, :cond_a

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 151
    .end local v7    # "_arg11":Landroid/net/Uri;
    .end local v11    # "_arg21":Z
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg11":Landroid/net/Uri;
    goto :goto_a

    .line 156
    .restart local v11    # "_arg21":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_b

    .line 159
    .end local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_arg11":Landroid/net/Uri;
    .end local v11    # "_arg21":Z
    :sswitch_6
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_b

    .line 163
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 168
    .restart local v10    # "_arg2":Landroid/os/Bundle;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v10}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->postMessage(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v12

    .line 169
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 165
    .end local v10    # "_arg2":Landroid/os/Bundle;
    .end local v12    # "_result":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Landroid/os/Bundle;
    goto :goto_c

    .line 173
    .end local v2    # "_arg0":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v15, "android.support.customtabs.ICustomTabsService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x5f4e5446 -> :sswitch_7
    .end sparse-switch
.end method
