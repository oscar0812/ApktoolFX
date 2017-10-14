.class public abstract Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AppleDataBox.java"


# static fields
.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static language:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dataCountry:I

.field dataLanguage:I

.field dataType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$preClinit()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    .line 111
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "English"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "French"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "German"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "3"

    const-string/jumbo v2, "Italian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "Dutch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Swedish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "6"

    const-string/jumbo v2, "Spanish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "7"

    const-string/jumbo v2, "Danish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "8"

    const-string/jumbo v2, "Portuguese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "9"

    const-string/jumbo v2, "Norwegian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "10"

    const-string/jumbo v2, "Hebrew"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "Japanese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "12"

    const-string/jumbo v2, "Arabic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "13"

    const-string/jumbo v2, "Finnish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "14"

    const-string/jumbo v2, "Greek"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "15"

    const-string/jumbo v2, "Icelandic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "16"

    const-string/jumbo v2, "Maltese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "17"

    const-string/jumbo v2, "Turkish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "18"

    const-string/jumbo v2, "Croatian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "19"

    const-string/jumbo v2, "Traditional_Chinese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "20"

    const-string/jumbo v2, "Urdu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "21"

    const-string/jumbo v2, "Hindi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "22"

    const-string/jumbo v2, "Thai"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "23"

    const-string/jumbo v2, "Korean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "24"

    const-string/jumbo v2, "Lithuanian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "25"

    const-string/jumbo v2, "Polish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "26"

    const-string/jumbo v2, "Hungarian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "27"

    const-string/jumbo v2, "Estonian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "28"

    const-string/jumbo v2, "Lettish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "29"

    const-string/jumbo v2, "Sami"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "30"

    const-string/jumbo v2, "Faroese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "31"

    const-string/jumbo v2, "Farsi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "32"

    const-string/jumbo v2, "Russian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "33"

    const-string/jumbo v2, "Simplified_Chinese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "Flemish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "35"

    const-string/jumbo v2, "Irish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "36"

    const-string/jumbo v2, "Albanian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "37"

    const-string/jumbo v2, "Romanian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "38"

    const-string/jumbo v2, "Czech"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "39"

    const-string/jumbo v2, "Slovak"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "40"

    const-string/jumbo v2, "Slovenian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "41"

    const-string/jumbo v2, "Yiddish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "42"

    const-string/jumbo v2, "Serbian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "43"

    const-string/jumbo v2, "Macedonian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "44"

    const-string/jumbo v2, "Bulgarian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "45"

    const-string/jumbo v2, "Ukrainian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "46"

    const-string/jumbo v2, "Belarusian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "47"

    const-string/jumbo v2, "Uzbek"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "48"

    const-string/jumbo v2, "Kazakh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "49"

    const-string/jumbo v2, "Azerbaijani"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "50"

    const-string/jumbo v2, "AzerbaijanAr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "51"

    const-string/jumbo v2, "Armenian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "52"

    const-string/jumbo v2, "Georgian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "53"

    const-string/jumbo v2, "Moldavian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "54"

    const-string/jumbo v2, "Kirghiz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "55"

    const-string/jumbo v2, "Tajiki"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "56"

    const-string/jumbo v2, "Turkmen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "57"

    const-string/jumbo v2, "Mongolian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "58"

    const-string/jumbo v2, "MongolianCyr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "59"

    const-string/jumbo v2, "Pashto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "60"

    const-string/jumbo v2, "Kurdish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "61"

    const-string/jumbo v2, "Kashmiri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "62"

    const-string/jumbo v2, "Sindhi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "63"

    const-string/jumbo v2, "Tibetan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "64"

    const-string/jumbo v2, "Nepali"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "65"

    const-string/jumbo v2, "Sanskrit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "66"

    const-string/jumbo v2, "Marathi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "67"

    const-string/jumbo v2, "Bengali"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "68"

    const-string/jumbo v2, "Assamese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "69"

    const-string/jumbo v2, "Gujarati"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "70"

    const-string/jumbo v2, "Punjabi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "71"

    const-string/jumbo v2, "Oriya"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "72"

    const-string/jumbo v2, "Malayalam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "73"

    const-string/jumbo v2, "Kannada"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "74"

    const-string/jumbo v2, "Tamil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "75"

    const-string/jumbo v2, "Telugu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "76"

    const-string/jumbo v2, "Sinhala"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "77"

    const-string/jumbo v2, "Burmese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "78"

    const-string/jumbo v2, "Khmer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "79"

    const-string/jumbo v2, "Lao"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "80"

    const-string/jumbo v2, "Vietnamese"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "81"

    const-string/jumbo v2, "Indonesian"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "82"

    const-string/jumbo v2, "Tagalog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "83"

    const-string/jumbo v2, "MalayRoman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "84"

    const-string/jumbo v2, "MalayArabic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "85"

    const-string/jumbo v2, "Amharic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "87"

    const-string/jumbo v2, "Galla"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "87"

    const-string/jumbo v2, "Oromo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "88"

    const-string/jumbo v2, "Somali"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "89"

    const-string/jumbo v2, "Swahili"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "90"

    const-string/jumbo v2, "Kinyarwanda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "91"

    const-string/jumbo v2, "Rundi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "92"

    const-string/jumbo v2, "Nyanja"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "93"

    const-string/jumbo v2, "Malagasy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "94"

    const-string/jumbo v2, "Esperanto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "128"

    const-string/jumbo v2, "Welsh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "129"

    const-string/jumbo v2, "Basque"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "130"

    const-string/jumbo v2, "Catalan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "131"

    const-string/jumbo v2, "Latin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "132"

    const-string/jumbo v2, "Quechua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "133"

    const-string/jumbo v2, "Guarani"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "134"

    const-string/jumbo v2, "Aymara"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "135"

    const-string/jumbo v2, "Tatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "136"

    const-string/jumbo v2, "Uighur"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "137"

    const-string/jumbo v2, "Dzongkha"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "138"

    const-string/jumbo v2, "JavaneseRom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    const-string/jumbo v1, "32767"

    const-string/jumbo v2, "Unspecified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 22
    iput p2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataType:I

    .line 23
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AppleDataBox.java"

    const-class v2, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getLanguageString"

    const-string/jumbo v3, "com.googlecode.mp4parser.boxes.apple.AppleDataBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getDataType"

    const-string/jumbo v3, "com.googlecode.mp4parser.boxes.apple.AppleDataBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getDataCountry"

    const-string/jumbo v3, "com.googlecode.mp4parser.boxes.apple.AppleDataBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setDataCountry"

    const-string/jumbo v3, "com.googlecode.mp4parser.boxes.apple.AppleDataBox"

    const-string/jumbo v4, "int"

    const-string/jumbo v5, "dataCountry"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getDataLanguage"

    const-string/jumbo v3, "com.googlecode.mp4parser.boxes.apple.AppleDataBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setDataLanguage"

    const-string/jumbo v3, "com.googlecode.mp4parser.boxes.apple.AppleDataBox"

    const-string/jumbo v4, "int"

    const-string/jumbo v5, "dataLanguage"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->parseDataLength4ccTypeCountryLanguageAndReturnRest(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->parseData(Ljava/nio/ByteBuffer;)V

    .line 86
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->writeDataLength4ccTypeCountryLanguage(Ljava/nio/ByteBuffer;)V

    .line 90
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->writeData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 91
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDataCountry()I
    .locals 2

    .prologue
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    return v0
.end method

.method public getDataLanguage()I
    .locals 2

    .prologue
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    return v0
.end method

.method protected abstract getDataLength()I
.end method

.method public getDataType()I
    .locals 2

    .prologue
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataType:I

    return v0
.end method

.method public getLanguageString()Ljava/lang/String;
    .locals 5

    .prologue
    sget-object v2, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    sget-object v2, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->language:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    .local v1, "lang":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 28
    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 31
    new-instance v2, Ljava/util/Locale;

    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    .line 33
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "lang":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected abstract parseData(Ljava/nio/ByteBuffer;)V
.end method

.method protected parseDataLength4ccTypeCountryLanguageAndReturnRest(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "content"    # Ljava/nio/ByteBuffer;
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 66
    .local v1, "dataLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataType:I

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    .line 69
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    if-gez v2, :cond_0

    .line 70
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    .line 73
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    if-gez v2, :cond_1

    .line 74
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    add-int/lit8 v3, v1, -0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 77
    .local v0, "data":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v1, -0x10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    return-object v0
.end method

.method public setDataCountry(I)V
    .locals 2
    .param p1, "dataCountry"    # I

    .prologue
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    .line 53
    return-void
.end method

.method public setDataLanguage(I)V
    .locals 2
    .param p1, "dataLanguage"    # I

    .prologue
    sget-object v0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    .line 61
    return-void
.end method

.method protected abstract writeData()[B
.end method

.method protected writeDataLength4ccTypeCountryLanguage(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "content"    # Ljava/nio/ByteBuffer;
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    const-string/jumbo v0, "data"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataCountry:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 105
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/AppleDataBox;->dataLanguage:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 106
    return-void
.end method
